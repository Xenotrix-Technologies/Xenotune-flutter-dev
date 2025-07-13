import 'package:flutter/material.dart';
import 'package:xenotune_flutter_dev/Core/colors.dart';
import 'package:xenotune_flutter_dev/Core/google_fonts.dart';
import 'package:xenotune_flutter_dev/Core/sized_box.dart';
import 'package:xenotune_flutter_dev/Presentation/Extra/widgets.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryPurpleDark,
          automaticallyImplyLeading: true,

          foregroundColor: kwhite,
          centerTitle: true,
          title: Text(
            'Privacy Policy',
            style: inter(color: kwhite, fontWeight: FontWeight.bold),
          ),
        ),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [kPrimaryPurpleDark, kblack, kPrimaryBlueDark],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    kSizedBoxHeight20,
                    Text(
                      'Introduction',
                      style: poppins(
                        color: kwhite,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    kSizedBoxHeight15,
                    Text(
                      '''This privacy policy applies to the Xenotune app (hereby referred to as "Application") for mobile devices that was created by Xenotrix (hereby referred to as "Service Provider") as a Freemium service. This service is intended for use "AS IS".''',
                      style: poppins(color: kwhite),
                    ),
                    kSizedBoxHeight40,
                    Text(
                      'Information collection and use',
                      style: poppins(
                        color: kwhite,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    kSizedBoxHeight15,
                    Text(
                      '''The Application collects information when you download and use it. This information may include information such as:''',
                      style: poppins(color: kwhite),
                    ),
                    kSizedBoxHeight15,
                    BulletPoints([
                      "Your device's Internet Protocol address (e.g. IP address)",
                      "The pages of the Application that you visit, the time and date of your visit, the time spent on those pages",
                      "The time spent on the Application",
                      "The operating system you use on your mobile device",
                    ], style: poppins(color: kwhite)),
                    kSizedBoxHeight15,
                    Text(
                      '''The Application does not gather precise information about the location of your mobile device.''',
                      style: poppins(color: kwhite),
                    ),
                    kSizedBoxHeight15,
                    Text(
                      '''The Application requires Google sign-In if the user is buying the premium packs. The Google sign-In still is optional for personal use and the Application itself doesn't collect any information of your google account.''',
                      style: poppins(color: kwhite),
                    ),
                    kSizedBoxHeight40,
                    Text(
                      'Third Party Access',
                      style: poppins(
                        color: kwhite,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    kSizedBoxHeight15,
                    Text(
                      '''Please note that the Application utilizes third-party services that have their own Privacy Policy about handling data. Below are the links to the Privacy Policy of the third-party service providers used by the Application:''',
                      style: poppins(color: kwhite),
                    ),
                    kSizedBoxHeight15,
                    BulletPoints(
                      [
                        "Google Play Service",
                        "AdMob",
                        "Google Analytics for Firebase",
                        "RevenueCat",
                      ],
                      style: poppins(color: Colors.blue),
                      links: [
                        'https://policies.google.com/privacy',
                        'https://support.google.com/admob/answer/6128543?hl=en',
                        'https://firebase.google.com/support/privacy',
                        'https://www.revenuecat.com/privacy/',
                      ],
                    ),
                    kSizedBoxHeight15,
                    Text(
                      '''The Service Provider may disclose User Provided and Automatically Collected Information:''',
                      style: poppins(color: kwhite),
                    ),
                    kSizedBoxHeight15,
                    BulletPoints([
                      "as required by law, such as to comply with a subpoena, or similar legal process;",
                      "when they believe in good faith that disclosure is necessary to protect their rights, protect your safety or the safety of others, investigate fraud, or respond to a government request;",
                      "with their trusted services providers who work on their behalf, do not have an independent use of the information we disclose to them, and have agreed to adhere to the rules set forth in this privacy statement.",
                    ], style: poppins(color: Colors.white)),
                    kSizedBoxHeight40,
                    Text(
                      'Opt-Out Rights',
                      style: poppins(
                        color: kwhite,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    kSizedBoxHeight15,
                    Text(
                      '''You can stop all collection of information by the Application easily by uninstalling it. You may use the standard uninstall processes as may be available as part of your mobile device or via the mobile application marketplace or network.''',
                      style: poppins(color: kwhite),
                    ),
                    kSizedBoxHeight40,
                    Text(
                      'Data Retention Policy',
                      style: poppins(
                        color: kwhite,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    kSizedBoxHeight15,
                    Text(
                      '''The Service Provider will retain User Provided data for as long as you use the Application and for a reasonable time thereafter. If you'd like them to delete User Provided Data that you have provided via the Application, please contact them at xenotrixtech@gmail.com and they will respond in a reasonable time.''',
                      style: poppins(color: kwhite),
                    ),
                    kSizedBoxHeight40,
                    Text(
                      'Children\'s Privacy',
                      style: poppins(
                        color: kwhite,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    kSizedBoxHeight15,
                    Text(
                      '''The Service Provider does not use the Application to knowingly solicit data from or market to children under the age of 13.

The Application does not address anyone under the age of 13. The Service Provider does not knowingly collect personally identifiable information from children under 13 years of age. In the case the Service Provider discover that a child under 13 has provided personal information, the Service Provider will immediately delete this from their servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact the Service Provider so that they will be able to take the necessary actions.''',
                      style: poppins(color: kwhite),
                    ),
                    kSizedBoxHeight40,
                    Text(
                      'Security',
                      style: poppins(
                        color: kwhite,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    kSizedBoxHeight15,
                    Text(
                      '''The Service Provider is concerned about safeguarding the confidentiality of your information''',
                      style: poppins(color: kwhite),
                    ),
                    kSizedBoxHeight40,
                    Text(
                      'Changes to Privacy Policy',
                      style: poppins(
                        color: kwhite,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    kSizedBoxHeight15,
                    Text(
                      '''This Privacy Policy may be updated from time to time for any reason. The Service Provider will notify you of any changes to the Privacy Policy by updating this page with the new Privacy Policy. You are advised to consult this Privacy Policy regularly for any changes, as continued use is deemed approval of all changes.

This privacy policy is effective as of 2025-07-12''',
                      style: poppins(color: kwhite),
                    ),
                    kSizedBoxHeight40,
                    Text(
                      'Your Consent',
                      style: poppins(
                        color: kwhite,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    kSizedBoxHeight15,
                    Text(
                      '''By using the Application, you are consenting to the processing of your information as set forth in this Privacy Policy now and as amended by us.''',
                      style: poppins(color: kwhite),
                    ),
                    kSizedBoxHeight40,
                    Text(
                      'Contact Us',
                      style: poppins(
                        color: kwhite,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    kSizedBoxHeight15,
                    Text(
                      '''If you have any questions regarding privacy while using the Application, or have questions about the practices, please contact the Service Provider at xenotrixtech@gmail.com.''',
                      style: poppins(color: kwhite),
                    ),
                    kSizedBoxHeight40,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
