import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KColor.icon,
        elevation: 0,

        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                print('drawer pressed');
                Scaffold.of(context).openDrawer();
              },
              icon: SvgPicture.asset(AssetPath.drawer,color: KColor.white,),
            );
          },
        ),
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hello',
                style: KTextStyle.subtitle5.copyWith(color: KColor.white),
              ),
              Text(
                'Hello',
                style: KTextStyle.description.copyWith(color: KColor.white),
              ),
            ],
          ),
          CircleAvatar(
            radius: 20,
            backgroundColor: KColor.white,
            child: Image.asset(
              AssetPath.profile,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
