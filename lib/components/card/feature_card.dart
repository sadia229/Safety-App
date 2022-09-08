import 'package:flutter/material.dart';
import 'package:woman_safty_app/styles/k_color.dart';
import 'package:woman_safty_app/styles/k_text_style.dart';
import 'package:woman_safty_app/utils/extension.dart';

class FeatureCard extends StatefulWidget {
  final Image? img;
  final String? title;

  const FeatureCard({this.img, this.title, Key? key}) : super(key: key);

  @override
  State<FeatureCard> createState() => _FeatureCardState();
}

class _FeatureCardState extends State<FeatureCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth * 0.4,
      height: 40,
      decoration: BoxDecoration(
        color: KColor.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: KColor.blackbg.withOpacity(0.2),
        ),
      ),
      child: Column(
        children: [
          Image.asset('${widget.img}'),
          const SizedBox(height: 10),
          Text(
            '${widget.title}',
            style: KTextStyle.button.copyWith(
              color: KColor.baseTextColor,
            ),
          )
        ],
      ),
    );
  }
}
