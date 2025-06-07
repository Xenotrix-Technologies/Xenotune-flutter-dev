import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:xenotune_flutter_dev/Core/colors.dart';
import 'package:xenotune_flutter_dev/Core/google_fonts.dart';
import 'package:xenotune_flutter_dev/Core/sized_box.dart';
import 'package:xenotune_flutter_dev/Infrastructure/Username%20Update/username_update.dart';
import 'package:xenotune_flutter_dev/Presentation/Home/Screens/subscription.dart';
import 'package:xenotune_flutter_dev/Presentation/Login/login_page.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController userNameController = TextEditingController();
    final userController = Get.find<UserController>();
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
              child: CircleAvatar(radius: 50, backgroundColor: kwhite),
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
                    onPressed: () {
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          transitionDuration: Duration(milliseconds: 600),
                          pageBuilder: (_, _, _) => SubscriptionPage(),
                          transitionsBuilder: (_, animation, __, child) {
                            final offsetAnimation = Tween<Offset>(
                              begin: Offset(0, 1),
                              end: Offset.zero,
                            ).animate(
                              CurvedAnimation(
                                parent: animation,
                                curve: Curves.easeInOut,
                              ),
                            );

                            return SlideTransition(
                              position: offsetAnimation,
                              child: child,
                            );
                          },
                        ),
                      );
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        transitionDuration: Duration(milliseconds: 500),
                        pageBuilder:
                            (context, animation, secondaryAnimation) =>
                                LoginPage(),
                        transitionsBuilder: (
                          context,
                          animation,
                          secondaryAnimation,
                          child,
                        ) {
                          return FadeTransition(
                            opacity: animation,
                            child: child,
                          );
                        },
                      ),
                    );
                  },
                  child: Text('Log In', style: inter(color: kblack)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
