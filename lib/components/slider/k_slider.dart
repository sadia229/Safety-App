import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';
import 'package:woman_safty_app/constants/asset_path.dart';
import '../../styles/k_color.dart';

class KSlider extends StatefulWidget {
  const KSlider({Key? key}) : super(key: key);

  @override
  State<KSlider> createState() => _KSliderState();
}

class _KSliderState extends State<KSlider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: KColor.white,
      child: BannerCarousel.fullScreen(
        banners: BannerImages.listProducts,
        customizedIndicators: const IndicatorModel.animation(
          width: 8,
          height: 8,
          spaceBetween: 4,
          widthAnimation: 30,
        ),
        height: 140,
        borderRadius: 10,
        activeColor: KColor.blackbg,
        animation: true,
        initialPage: 0,
      ),
    );
  }
}

class BannerImages {
  static const String product1 = AssetPath.health;
  static const String product2 = AssetPath.travel;
  static const String product3 = AssetPath.freedom;

  static List<BannerModel> listProducts = [
    BannerModel(imagePath: product1, id: "1"),
    BannerModel(imagePath: product2, id: "2"),
    BannerModel(imagePath: product3, id: "3"),
  ];
}
