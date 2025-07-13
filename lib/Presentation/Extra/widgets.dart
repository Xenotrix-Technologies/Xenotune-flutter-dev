import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BulletPoints extends StatelessWidget {
  final List<String> items;
  final TextStyle? style;
  final double spacing;
  final TextAlign? textAlign;

  final List<String>? links;
  const BulletPoints(
    this.items, {
    super.key,
    this.style,
    this.spacing = 4.0,
    this.textAlign,

    this.links,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
            items.map((text) {
              return Padding(
                padding: EdgeInsets.only(bottom: spacing),
                child: InkWell(
                  onTap: () {
                    links?.map((link) async {
                      if (await canLaunchUrl(Uri.parse(link))) {
                        await launchUrl(
                          Uri.parse(link),
                          mode: LaunchMode.externalApplication,
                        );
                      } else {
                        throw 'Could not launch subscription page';
                      }
                    }).toList();
                  },
                  child: Text('• $text', style: style, textAlign: textAlign),
                ),
              );
            }).toList(),
      ),
    );
  }
}
