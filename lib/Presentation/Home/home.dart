import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:xenotune_flutter_dev/Core/colors.dart';
import 'package:xenotune_flutter_dev/Core/google_fonts.dart';
import 'package:xenotune_flutter_dev/Core/sized_box.dart';
import 'package:xenotune_flutter_dev/Presentation/Home/Widgets/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final AudioPlayer _audioPlayer = AudioPlayer();
  // bool _isPlaying = false;
  List<double> _heights = List.generate(25, (_) => 7.0);
  // Timer? _timer;

  // @override
  // void dispose() {
  //   _audioPlayer.dispose();
  //   _timer?.cancel();
  //   super.dispose();
  // }

  // void _togglePlayPause() async {
  //   if (_isPlaying) {
  //     await _audioPlayer.pause();
  //     _timer?.cancel();
  //     setState(() {
  //       _isPlaying = false;
  //     });
  //   } else {
  //     if (_audioPlayer.playerState.processingState == ProcessingState.idle) {
  //       await _audioPlayer.setUrl(
  //         'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3',
  //       );
  //     }
  //     await _audioPlayer.play();
  //     _startWaveAnimation();
  //     setState(() {
  //       _isPlaying = true;
  //     });
  //   }
  //   setState(() => _isPlaying = !_isPlaying);
  // }

  // void _startWaveAnimation() {
  //   _timer = Timer.periodic(Duration(milliseconds: 100), (_) {
  //     setState(() {
  //       _heights = List.generate(25, (_) => Random().nextDouble() * 60 + 10);
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,

      endDrawer: DrawerWidget(),
      appBar: AppBar(
        foregroundColor: kwhite,
        title: Text(
          'Hey user,\nWhats\'s your current mood',
          maxLines: 2,
          style: poppins(color: kwhite, fontSize: 15),
        ),
        backgroundColor: ktransparent,
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
            child: Column(
              children: [
                Container(
                  height: kMqHeight(context) * 0.65,
                  color: kPrimarySleepColor,
                ),
                kSizedBoxHeight15,
                Center(
                  child: Container(
                    height: kMqHeight(context) * 0.08,
                    width: kMqWidth(context) * 0.7,
                    decoration: BoxDecoration(
                      color: kGrey,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed:
                              //_togglePlayPause
                              () {},
                          icon: Icon(
                            //_isPlaying ? Symbols.pause :
                            Symbols.play_arrow,
                            color: kwhite,
                            size: 45,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            right: kMqWidth(context) * 0.05,
                          ),
                          child: Row(
                            children:
                                _heights.map((height) {
                                  return AnimatedContainer(
                                    duration: Duration(milliseconds: 100),
                                    width: 4,
                                    height: height,
                                    margin: EdgeInsets.symmetric(horizontal: 2),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                  );
                                }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                kSizedBoxHeight15,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: kMqHeight(context) * 0.1,
                      width: kMqWidth(context) * 0.19,

                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            kPrimaryPurple.withAlpha(120),
                            kPrimaryBlue.withAlpha(120),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'AI',
                            style: kdamThmor(color: kwhite, fontSize: 25),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: kMqHeight(context) * 0.1,
                      width: kMqWidth(context) * 0.19,

                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            kPrimaryPurple.withAlpha(120),
                            kPrimaryBlue.withAlpha(120),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Symbols.stream, color: kwhite, size: 30),
                        ),
                      ),
                    ),
                    Container(
                      height: kMqHeight(context) * 0.1,
                      width: kMqWidth(context) * 0.19,

                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            kPrimaryPurple.withAlpha(120),
                            kPrimaryBlue.withAlpha(120),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Symbols.sentiment_calm,
                            color: kwhite,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: kMqHeight(context) * 0.1,
                      width: kMqWidth(context) * 0.19,

                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            kPrimaryPurple.withAlpha(120),
                            kPrimaryBlue.withAlpha(120),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Symbols.sleep, color: kwhite, size: 30),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
