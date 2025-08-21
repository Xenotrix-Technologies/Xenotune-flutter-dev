import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';

abstract class ILogin {
  Future<UserCredential> signInAnonymously();
  Future<UserCredential> signOutAndUseAnonymous();
  Future<UserCredential> loginUsingGoogle();
  void checkUserIsLoggedIn(BuildContext context);
}
