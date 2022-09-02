import 'package:flutter/material.dart';
import 'package:woman_safty_app/constants/asset_path.dart';
import 'package:woman_safty_app/styles/b_style.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
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
                width: MediaQuery.of(context).size.width ,
                height: 198,
                margin: const EdgeInsets.only(top: 12, right: 12, left: 6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: KColor.appBackground,
                  boxShadow: [
                    BoxShadow(
                      color: KColor.shadowColor.withOpacity(0.2),
                      spreadRadius: 0,
                      blurRadius: 12,
                      offset: const Offset(4, 4), // changes position of shadow
                    ),
                    BoxShadow(
                      color: KColor.shadowColor.withOpacity(0.2),
                      spreadRadius: 0,
                      blurRadius: 12,
                      offset: const Offset(-4, -4), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('OPT sent to your\nnew number',
                      textAlign: TextAlign.center,
                      style: KTextStyle.subtitle1.copyWith(
                        color: KColor.icon.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
