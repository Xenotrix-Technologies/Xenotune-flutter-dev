import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:xenotune_flutter_dev/Domain/Login%20functions/i_login.dart';

@LazySingleton(as: ILogin)
class LoginRepository implements ILogin {
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

    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  @override
  Future<void> logout() async {
    await GoogleSignIn().signOut();
    await FirebaseAuth.instance.signOut();
  }
}
