// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:rive/rive.dart' show RiveAnimation;
import 'package:xenotune_flutter_dev/Core/colors.dart';
import 'package:xenotune_flutter_dev/Core/google_fonts.dart';
import 'package:xenotune_flutter_dev/Core/sized_box.dart';

import 'package:xenotune_flutter_dev/Infrastructure/Login/login.dart';
import 'package:xenotune_flutter_dev/Infrastructure/Username%20Update/username_update.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController userNameController = TextEditingController();
    final userController = Get.find<UserController>();
    final user = FirebaseAuth.instance.currentUser;
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [kPrimaryBlueDark, kblack, kPrimaryPurpleDark],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            DrawerHeader(
              child: CircleAvatar(
                radius: 60,
                backgroundColor: ktransparent,
                backgroundImage: AssetImage('assets/img/xenotune_logo.png'),
              ),
            ),
            Column(
              children: [
                ListTile(
                  title: Text('Change username', style: inter(color: kwhite)),
                  trailing: IconButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            backgroundColor: kPrimaryFocusDarkColor,

                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                kSizedBoxHeight15,
                                TextFormField(
                                  maxLength: 20,
                                  controller: userNameController,
                                  cursorColor: kPrimaryPurple,
                                  autofocus: true,
                                  style: inter(color: kwhite),
                                  decoration: InputDecoration(
                                    counterText: '',
                                    hintText: 'New username',

                                    hintStyle: inter(
                                      color: kwhite.withAlpha(190),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(18),
                                      borderSide: BorderSide(color: kwhite),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(13),
                                      borderSide: BorderSide(color: kwhite),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(18),
                                      borderSide: BorderSide(
                                        color: kPrimaryPurple,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  'Cancel',
                                  style: inter(color: kwhite),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  userController.updateUsername(
                                    userNameController.text,
                                  );
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  'Change',
                                  style: inter(color: kwhite),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    icon: Icon(Symbols.arrow_forward_ios, color: kwhite),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Terms & Conditions',
                    style: inter(color: kwhite),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Symbols.arrow_forward_ios, color: kwhite),
                  ),
                ),
                ListTile(
                  title: Text('Privacy policy', style: inter(color: kwhite)),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Symbols.arrow_forward_ios, color: kwhite),
                  ),
                ),
                ListTile(
                  title: Text('Remove ads!', style: inter(color: kwhite)),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Symbols.arrow_forward_ios, color: kwhite),
                  ),
                ),
                ListTile(
                  title: Text('Upgrade to pro', style: inter(color: kwhite)),
                  trailing: IconButton(
                    onPressed: () async {
                      Navigator.pop(context);
                      LoginRepository().checkUserIsLoggedIn(context);
                    },
                    icon: Icon(Symbols.arrow_forward_ios, color: kwhite),
                  ),
                ),
              ],
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(bottom: kMqHeight(context) * 0.02),
              child: ListTile(
                title: Text('App version\n1.0.0', style: inter(color: kwhite)),
                trailing: ElevatedButton(
                  onPressed: () async {
                    if (user != null) {
                      await LoginRepository().logout();

                      Navigator.pop(context);
                    } else {
                      Navigator.pop(context);
                      try {
                        final credential =
                            await LoginRepository().loginUsingGoogle();
                        final user = credential.user;
                        if (user != null) {
                          await Purchases.logIn(user.uid);
                        }
                      } catch (e) {
                        Get.showSnackbar(
                          GetSnackBar(
                            titleText: SizedBox(
                              height: kMqHeight(context) * 0.15,
                              width: double.infinity,
                              child: Center(
                                child: RiveAnimation.asset(
                                  'assets/animations/no_internet.riv',
                                ),
                              ),
                            ),
                            messageText: Column(
                              children: [
                                kSizedBoxHeight10,
                                Center(
                                  child: Text(
                                    'Failed',
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
                                    'Something is not right.',
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
                        log('Error: $e');
                      }
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        user != null
                            ? WidgetStatePropertyAll(ktransparent)
                            : WidgetStatePropertyAll(kwhite),
                  ),
                  child:
                      user != null
                          ? Text('Log Out', style: inter(color: kwhite))
                          : Text('Log In', style: inter(color: kblack)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
