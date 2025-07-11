import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:rive/rive.dart' show RiveAnimation;
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:xenotune_flutter_dev/Application/Subscription/subscription_bloc.dart';

import 'package:xenotune_flutter_dev/Core/colors.dart';
import 'package:xenotune_flutter_dev/Core/google_fonts.dart';
import 'package:xenotune_flutter_dev/Core/sized_box.dart';
import 'package:xenotune_flutter_dev/Infrastructure/Subscription/subscription_repository.dart';
import 'package:xenotune_flutter_dev/Presentation/Home/Widgets/carousal_container_widget.dart';

class SubscriptionPage extends StatefulWidget {
  const SubscriptionPage({super.key});

  @override
  State<SubscriptionPage> createState() => _SubscriptionPageState();
}

class _SubscriptionPageState extends State<SubscriptionPage> {
  final CarouselSliderController _controller = CarouselSliderController();

  int productIndex = 2;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => context.read<SubscriptionBloc>().add(OnSubscriptionEvent()),
    );
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => context.read<SubscriptionBloc>().add(OnCheckedOrPurchased()),
    );
    final List<String> m = ['1 - Year', '6 - Months', '1 - Month'];
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,

        appBar: AppBar(
          foregroundColor: kwhite,

          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios_new),
          ),
          backgroundColor: ktransparent,
          surfaceTintColor: ktransparent,
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
            SafeArea(
              child: RiveAnimation.asset(
                'assets/animations/particles_drop.riv',
              ),
            ),
            BlocBuilder<SubscriptionBloc, SubscriptionState>(
              builder: (context, state) {
                final offerings = state.offerings;
                final isSubscribed = !state.isAdActive;
                final days = state.remainingDays;

                // if (offerings.isEmpty) {
                //   log('nothing to show');
                // } else {
                //   log(offerings.first.toString());
                // }

                final packs =
                    offerings
                        .map((offer) => offer.availablePackages)
                        .expand((pair) => pair)
                        .toList();
                return SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      isSubscribed
                          ? Padding(
                            padding: EdgeInsets.only(
                              top: kMqHeight(context) * 0.05,
                            ),
                            child: Center(
                              child: Text(
                                'Your already using Plus\nYour Plus will renew in $days days',
                                style: inter(color: kwhite, fontSize: 18),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                          : SizedBox(),
                      isSubscribed ? kSizedBoxHeight15 : SizedBox(),
                      isSubscribed
                          ? Center(
                            child: ElevatedButton(
                              onPressed: () {
                                PurchaseApi()
                                    .cancelSubscriptionThroughPlaystore();
                              },
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                backgroundColor: Colors.transparent,
                                shadowColor: Colors.transparent,
                              ),
                              child: Ink(
                                padding: EdgeInsets.symmetric(
                                  horizontal: kMqWidth(context) * 0.10,
                                  vertical: 12,
                                ),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      kPrimaryPurple,
                                      kblack,
                                      kPrimaryBlue,
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                  ),
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                child: Text(
                                  'Cancel',
                                  style: inter(color: kwhite),
                                ),
                              ),
                            ),
                          )
                          : SizedBox(),
                      Padding(
                        padding: EdgeInsets.only(
                          top: kMqHeight(context) * 0.05,
                        ),
                        child: Center(
                          child: GradientText(
                            'No Distraction.\nJust sound.',
                            style: poppins(fontSize: 18),
                            textAlign: TextAlign.center,
                            colors: [kPrimaryPurple, kPrimaryBlue],
                          ),
                        ),
                      ),
                      SizedBox(height: kMqHeight(context) * 0.07),
                      Padding(
                        padding: EdgeInsets.only(
                          left: kMqWidth(context) * 0.05,
                        ),
                        child: Text(
                          'Upgrade to Xeno plus \nand enjoy music without distractions',
                          style: inter(color: kwhite, fontSize: 16),
                        ),
                      ),
                      SizedBox(height: kMqHeight(context) * 0.05),
                      Padding(
                        padding: EdgeInsets.only(
                          left: kMqWidth(context) * 0.05,
                        ),
                        child: Text(
                          '- Remove All Ads\n- Unlimited Hearing\n- One-Time Purchase',
                          style: inter(color: kwhite, fontSize: 16),
                        ),
                      ),
                      SizedBox(height: kMqHeight(context) * 0.05),
                      CarouselSlider(
                        carouselController: _controller,
                        items: List.generate(packs.length, (index) {
                          final product = packs[index];
                          return ProductsSection(
                            intialPage: index,
                            controller: _controller,
                            product: product,
                            yearOrMonth: m[index],
                          );
                        }),

                        options: CarouselOptions(
                          initialPage: 2,
                          onPageChanged: (index, reason) {
                            setState(() {
                              productIndex = index;
                            });
                          },
                          autoPlay: false,
                          viewportFraction: 0.47,
                          enlargeCenterPage: true,
                        ),
                      ),
                      SizedBox(height: kMqHeight(context) * 0.12),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            final package = packs[productIndex];
                            log(package.toString());
                            context.read<SubscriptionBloc>().add(
                              OnPurchasePackage(
                                package: package,
                                context: context,
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                          ),
                          child: Ink(
                            padding: EdgeInsets.symmetric(
                              horizontal: kMqWidth(context) * 0.20,
                              vertical: 12,
                            ),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [kPrimaryPurple, kblack, kPrimaryBlue],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Text(
                              'Upgrade Now',
                              style: inter(color: kwhite),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: kMqHeight(context) * 0.05),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
