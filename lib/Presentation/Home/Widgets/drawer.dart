import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:xenotune_flutter_dev/Core/colors.dart';
import 'package:xenotune_flutter_dev/Core/google_fonts.dart';
import 'package:xenotune_flutter_dev/Core/sized_box.dart';
import 'package:xenotune_flutter_dev/Presentation/Login/login_page.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
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
                  title: Text('Set timer', style: inter(color: kwhite)),
                  trailing: IconButton(
                    onPressed: () {},
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
                    onPressed: () {},
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
