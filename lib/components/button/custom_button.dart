import 'package:flutter/material.dart';
import 'package:woman_safty_app/styles/k_color.dart';
import '../../styles/k_text_style.dart';

class KButton extends StatelessWidget {
  final String? title;
  final VoidCallback? onTap;

  const KButton({this.title, this.onTap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
          color: KColor.icon,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$title',
                  style: KTextStyle.subtitle1
                      .copyWith(color: KColor.whiteBackground)),
              const SizedBox(width: 15),
              const Icon(
                Icons.arrow_forward_sharp,
                color: KColor.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
