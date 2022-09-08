import 'package:flutter/material.dart';
import 'package:woman_safty_app/styles/k_color.dart';
import '../../styles/k_text_style.dart';

class KDrawer extends StatelessWidget {
  const KDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: KColor.blackbg,
      padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 30),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'FINESSE',
                    style: KTextStyle.headline1
                        .copyWith(color: KColor.whiteBackground),
                  ),
                ),
                const SizedBox(height: 40),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/mainScreen');
                  },
                  child: Text(
                    'Home',
                    style: KTextStyle.subtitle1
                        .copyWith(color: KColor.whiteBackground),
                  ),
                ),
                const SizedBox(height: 16),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/menCategories');
                  },
                  child: Text(
                    'Men',
                    style: KTextStyle.subtitle1
                        .copyWith(color: KColor.whiteBackground),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Women',
                  style: KTextStyle.subtitle1
                      .copyWith(color: KColor.whiteBackground),
                ),
                const SizedBox(height: 16),
                Text(
                  'Kids',
                  style: KTextStyle.subtitle1
                      .copyWith(color: KColor.whiteBackground),
                ),
                const SizedBox(height: 16),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/contact');
                  },
                  child: Text(
                    'Contact Us',
                    style: KTextStyle.subtitle1
                        .copyWith(color: KColor.whiteBackground),
                  ),
                ),
                const SizedBox(height: 16),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/about');
                  },
                  child: Text(
                    'About Us',
                    style: KTextStyle.subtitle1
                        .copyWith(color: KColor.whiteBackground),
                  ),
                ),
                const SizedBox(height: 80),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Text(
                    'Log In',
                    style: KTextStyle.subtitle1
                        .copyWith(color: KColor.whiteBackground),
                  ),
                ),
                const SizedBox(height: 16),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                  child: Text(
                    'Register',
                    style: KTextStyle.subtitle1
                        .copyWith(color: KColor.whiteBackground),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
