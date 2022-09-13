import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:woman_safty_app/constants/asset_path.dart';
import 'package:woman_safty_app/styles/k_color.dart';
import 'package:woman_safty_app/styles/k_text_style.dart';
import 'package:woman_safty_app/utils/extension.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    final _timer = Timer(
      const Duration(seconds: 5),
      () {
        setState(() {
          Navigator.pushNamed(context, '/login');
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KColor.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: RotationTransition(
              turns:  const AlwaysStoppedAnimation(50 / 360),
              child: Lottie.asset(
                AssetPath.butterfly,
                height: 80,
              ),
            ),
          ),
          SizedBox(
            width: context.screenWidth,
            child: DefaultTextStyle(
              style: KTextStyle.headline2.copyWith(
                color: KColor.textColor,
              ),
              child: AnimatedTextKit(
                totalRepeatCount: 1,
                animatedTexts: [
                  TypewriterAnimatedText(
                    'Girls are angels, save them',
                    textAlign: TextAlign.center,
                    speed: const Duration(milliseconds: 100),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 30),
          Align(
            alignment: Alignment.topLeft,
            child: RotationTransition(
              turns:  const AlwaysStoppedAnimation(320 / 360),
              child: Lottie.asset(
                AssetPath.butterfly,
                height: 80,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
