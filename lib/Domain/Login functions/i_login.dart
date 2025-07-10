import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';

abstract class ILogin {
  Future<UserCredential> loginUsingGoogle();
  Future<void> logout();
  void checkUserIsLoggedIn(BuildContext context);
}
