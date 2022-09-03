import 'dart:async';

import 'package:flutter/material.dart';
import 'package:slide_countdown/slide_countdown.dart';
import 'package:woman_safty_app/components/button/custom_button.dart';
import 'package:woman_safty_app/constants/asset_path.dart';
import 'package:woman_safty_app/styles/b_style.dart';

class OtpPage extends StatefulWidget {
  final String phoneNumber;

  const OtpPage({required this.phoneNumber, Key? key}) : super(key: key);

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  final defaultDuration = const Duration(minutes: 02, seconds: 10);
  final defaultPadding =
      const EdgeInsets.symmetric(horizontal: 10, vertical: 5);
  bool check = false;

  @override
  void initState() {
    super.initState();
    final _timer = Timer(
      const Duration(seconds: 7),
      () {
        setState(() {
          check = true;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KColor.appBackground,
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AssetPath.logo,
                height: 100,
              ),
              const SizedBox(height: 15),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 198,
                margin: const EdgeInsets.only(top: 12, right: 12, left: 6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: KColor.appBackground,
                  boxShadow: [
                    BoxShadow(
                      color: KColor.shadowColor.withOpacity(0.4),
                      spreadRadius: 0,
                      blurRadius: 12,
                      offset: const Offset(4, 4), // changes position of shadow
                    ),
                    BoxShadow(
                      color: KColor.shadowColor.withOpacity(0.4),
                      spreadRadius: 0,
                      blurRadius: 12,
                      offset:
                          const Offset(-4, -4), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'OPT sent to your\nnew number',
                      textAlign: TextAlign.center,
                      style: KTextStyle.subtitle1.copyWith(
                        color: KColor.icon.withOpacity(0.5),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      widget.phoneNumber.toString(),
                      textAlign: TextAlign.center,
                      style: KTextStyle.subtitle4.copyWith(
                        color: KColor.icon,
                      ),
                    ),
                    const SizedBox(height: 15),
                    SlideCountdownSeparated(
                      duration: defaultDuration,
                      padding: defaultPadding,
                      decoration: const BoxDecoration(
                        color: KColor.icon,
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              if (check)
                KButton(
                  title: 'Submit',
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      '/otp',
                    );
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }
}
