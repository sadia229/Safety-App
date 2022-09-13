import 'package:flutter/material.dart';
import 'package:woman_safty_app/constants/asset_path.dart';
import 'package:woman_safty_app/styles/k_color.dart';
import 'package:woman_safty_app/styles/k_text_style.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               const CircleAvatar(
                radius: 22,
                backgroundColor: KColor.white,
                backgroundImage: AssetImage(
                  AssetPath.profile,
                ),
              ),
              const SizedBox(width: 8),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello',
                    style: KTextStyle.subtitle5.copyWith(color: KColor.blackbg),
                  ),
                  Text(
                    'Hello',
                    style:
                        KTextStyle.description.copyWith(color: KColor.blackbg),
                  ),
                ],
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none,
              color: KColor.blackbg,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}
