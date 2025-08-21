import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

import 'package:rive/rive.dart' show RiveAnimation;
import 'package:xenotune_flutter_dev/Core/colors.dart';
import 'package:xenotune_flutter_dev/Core/google_fonts.dart';
import 'package:xenotune_flutter_dev/Core/sized_box.dart';
import 'package:xenotune_flutter_dev/Domain/Login%20functions/i_login.dart';
import 'package:xenotune_flutter_dev/Presentation/Home/Screens/subscription.dart';

@LazySingleton(as: ILogin)
class LoginRepository implements ILogin {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @override
  Future<UserCredential> signInAnonymously() async {
    final userCredential = await _firebaseAuth.signInAnonymously();
    return userCredential;
  }

  @override
  Future<UserCredential> loginUsingGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    if (googleUser == null) throw Exception('Google sign-in aborted');

    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final currentUser = _firebaseAuth.currentUser;

    if (currentUser != null && currentUser.isAnonymous) {
      try {
        final userCredential = await currentUser.linkWithCredential(credential);
        return userCredential;
      } on FirebaseAuthException catch (e) {
        log('Error linking anonymous user: ${e.code}');
        if (e.code == 'credential-already-in-use') {
          await currentUser.delete();
          final userCredential = await _firebaseAuth.signInWithCredential(
            credential,
          );

          return userCredential;
        } else {
          rethrow;
        }
      }
    } else {
      final userCredential = await _firebaseAuth.signInWithCredential(
        credential,
      );
      return userCredential;
    }
  }

  @override
  Future<void> checkUserIsLoggedIn(context) async {
    final user = FirebaseAuth.instance.currentUser;

    if (user != null && user.isAnonymous) {
      Get.showSnackbar(
        GetSnackBar(
          titleText: SizedBox(
            height: kMqHeight(context) * 0.15,
            width: double.infinity,
            child: Center(
              child: RiveAnimation.asset('assets/animations/no_internet.riv'),
            ),
          ),
          messageText: Column(
            children: [
              kSizedBoxHeight10,
              Center(
                child: Text(
                  'Oops!',
                  style: lexanGiga(
                    color: kwhite,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              kSizedBoxHeight10,
              Center(
                child: Text(
                  'You need to login first',
                  textAlign: TextAlign.center,
                  style: inter(
                    color: kwhite,
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          snackPosition: SnackPosition.TOP,

          margin: EdgeInsets.symmetric(
            horizontal: 12,
            vertical: kMqHeight(context) * 0.07,
          ),
          borderRadius: 18,
          duration: Duration(seconds: 2),
          snackStyle: SnackStyle.FLOATING,
          backgroundGradient: LinearGradient(
            colors: [kPrimaryPurple, kblack, kPrimaryBlue],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      );
    } else {
      Navigator.of(context).push(
        PageRouteBuilder(
          transitionDuration: Duration(milliseconds: 600),
          pageBuilder: (_, _, _) => SubscriptionPage(),
          transitionsBuilder: (_, animation, __, child) {
            final offsetAnimation = Tween<Offset>(
              begin: Offset(0, 1),
              end: Offset.zero,
            ).animate(
              CurvedAnimation(parent: animation, curve: Curves.easeInOut),
            );

            return SlideTransition(position: offsetAnimation, child: child);
          },
        ),
      );
    }
  }

  @override
  Future<UserCredential> signOutAndUseAnonymous() async {
    await GoogleSignIn().signOut();
    await _firebaseAuth.signOut();

    final userCredential = await _firebaseAuth.signInAnonymously();
    return userCredential;
  }

  bool get isAnonymous => _firebaseAuth.currentUser?.isAnonymous ?? true;
  bool get isSignedIn =>
      _firebaseAuth.currentUser != null &&
      !_firebaseAuth.currentUser!.isAnonymous;
  User? get currentUser => _firebaseAuth.currentUser;
}

String getUserIdForBackend() {
  final user = FirebaseAuth.instance.currentUser;

  if (user == null) return 'user_guest';

  if (user.isAnonymous) {
    final uid = user.uid;
    return 'user_${uid.substring(0, 4)}';
  } else {
    final name = user.displayName?.replaceAll(' ', '') ?? 'unknown';
    return 'user_$name';
  }
}
