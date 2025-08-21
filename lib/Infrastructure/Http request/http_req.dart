import 'dart:convert';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:xenotune_flutter_dev/Domain/Core/Failures/mainfailures.dart';
import 'package:xenotune_flutter_dev/Domain/Http%20req/i_http_repo.dart';
import 'package:xenotune_flutter_dev/Infrastructure/Login/login.dart';

// emulator ipL 10.0.2.2
// device ip: 192.168.1.35
// default ip: 127.0.0.1

@LazySingleton(as: IHttpRepo)
class HttpReq implements IHttpRepo {
  final userId = getUserIdForBackend();
  final baseUrl = getBaseUrl();
  // @override
  // Future<Either<MainFailures, String>> fetchMusic(String mood) async {
  //   try {
  //     final url = 'http://10.0.2.2:8000/stream-music?mode=$mood';

  //     // Optional: ping the server to make sure it responds OK
  //     final response = await http.get(Uri.parse(url));

  //     if (response.statusCode == 200 || response.statusCode == 206) {
  //       // The actual streaming will be handled by your audio player (like just_audio)
  //       return right(url);
  //     } else {
  //       log('Server error: ${response.statusCode}');
  //       return left(MainFailures.serverfailure());
  //     }
  //   } catch (e) {
  //     log('Failed to fetch or stream music: $e');
  //     return left(MainFailures.clientfailure());
  //   }
  // }
  @override
  Future<Either<MainFailures, String>> fetchMusic(String mood) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/generate'),
        body: jsonEncode({'user_id': userId, 'mode': mood}),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        // final fileName = json['filename'] ?? 'M1.mp3';
        final aUrl = json['download_url'] as String;

        // final storageRef = FirebaseStorage.instance.ref().child(
        //   'users/user_h4r1/$fileName',
        // );
        log('url: $aUrl');
        // final audioUrl = await storageRef.getDownloadURL();
        // log('Fetched audio URL: $audioUrl');

        return right(aUrl);
      } else {
        log('Server error: ${response.statusCode}');
        return left(MainFailures.serverfailure());
      }
    } catch (e) {
      log('Failed to fetch or play music: $e');
      return left(MainFailures.clientfailure());
    }
  }

  @override
  Future<Either<MainFailures, String>> fetcAgainhMusic(String nextFile) async {
    try {
      final storageRef = FirebaseStorage.instance.ref().child(
        'users/$userId/$nextFile',
      );

      final metadata = await storageRef.getMetadata();
      if (metadata.size == 0) {
        log('File not ready or empty');
        return left(MainFailures.serverfailure());
      }
      final audioUrl = await storageRef.getDownloadURL();
      final finalUrl = '$audioUrl?ts=${DateTime.now().millisecondsSinceEpoch}';
      log('Fetching file: ${storageRef.fullPath}');
      return right(finalUrl);
    } on FirebaseException catch (e) {
      log('Firebase error: ${e.message}');
      return left(MainFailures.serverfailure());
    } catch (e) {
      log('Unexpected error: $e');
      return left(MainFailures.clientfailure());
    }
  }

  @override
  Future<Either<MainFailures, String>> pauseMusic() async {
    try {
      final response = await http.post(Uri.parse('http://10.0.2.2:8000/pause'));

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        return right(json['status'] as String);
      } else {
        log('Pause error: ${response.statusCode}');
        return left(MainFailures.serverfailure());
      }
    } catch (e) {
      log('Pause request failed: $e');
      return left(MainFailures.clientfailure());
    }
  }

  @override
  Future<Either<MainFailures, String>> resumeMusic() async {
    try {
      final response = await http.post(
        Uri.parse('http://10.0.2.2:8000/resume'),
      );

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        return right(json['status'] as String);
      } else {
        log('Resume error: ${response.statusCode}');
        return left(MainFailures.serverfailure());
      }
    } catch (e) {
      log('Resume request failed: $e');
      return left(MainFailures.clientfailure());
    }
  }

  @override
  Future<Either<MainFailures, String>> stopMusic() async {
    try {
      final response = await http.post(Uri.parse('$baseUrl/stop'));

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        return right(json['status'] as String);
      } else {
        log('Stop error: ${response.statusCode}');
        return left(MainFailures.serverfailure());
      }
    } catch (e) {
      log('Stop request failed: $e');
      return left(MainFailures.clientfailure());
    }
  }

  @override
  Future<void> replaceSlot() async {
    try {
      final response = await http.post(Uri.parse('$baseUrl/replace'));
      if (response.statusCode == 200) {
        log('Replace request');
      }
    } catch (e) {
      log('Replace request failed: $e');
    }
  }
}

// Future<void> fetchAndPlayMusic(String mood) async {
//   final player = AudioPlayer();

//   try {
//     final response = await http.post(
//       Uri.parse('http://10.0.2.2:8000/generate-music'),
//       body: jsonEncode({'user_id': 'user123', 'mode': mood}),
//       headers: {'Content-Type': 'application/json'},
//     );
//     if (response.statusCode == 200) {
//       final json = jsonDecode(response.body);
//       final audioUrl = json['download_url'] as String;
//       log('successfully fetched audio URL: $audioUrl');
//       await player.setUrl(audioUrl);
//       await player.play();
//     } else {
//       log('Server error: ${response.statusCode}');
//     }
//   } catch (e) {
//     log('Failed to fetch or play music: $e');
//   }
// }

Future<String> getBaseUrl() async {
  try {
    final doc =
        await FirebaseFirestore.instance
            .collection('base_url')
            .doc('Base-Url-fromXforXenotune')
            .get();

    if (doc.exists) {
      return doc.data()?['base_url'] ?? 'http://';
    } else {
      log('No base URL document found');
      return 'http://';
    }
  } catch (e) {
    log('Failed to fetch base URL: $e');
    return 'http://';
  }
}
