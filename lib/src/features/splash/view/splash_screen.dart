import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
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
      const Duration(seconds: 4),
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
      body: Stack(
        children: [
          Image.asset(
            AssetPath.splash,
            width: context.screenWidth,
            height: context.screenHeight,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: context.screenWidth,
              child: DefaultTextStyle(
                style: KTextStyle.headline2.copyWith(
                  color: KColor.white,
                ),
                child: AnimatedTextKit(
                  totalRepeatCount: 1,
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'Girls are angels, save them',
                      textAlign: TextAlign.center,
                      speed: const Duration(milliseconds: 60),
                    ),
                  ],
                  onTap: () {
                    print("Tap Event");
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
