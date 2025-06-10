import 'package:firebase_auth/firebase_auth.dart';

abstract class ILogin {
  Future<UserCredential> loginUsingGoogle();
  Future<void> logout();
}
