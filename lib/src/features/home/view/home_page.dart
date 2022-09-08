import 'package:flutter/material.dart';
import 'package:woman_safty_app/components/appbar/home_appbar.dart';
import 'package:woman_safty_app/components/card/feature_card.dart';
import 'package:woman_safty_app/components/drawer/k_drawer.dart';
import 'package:woman_safty_app/constants/asset_path.dart';
import 'package:woman_safty_app/styles/k_color.dart';
import 'package:woman_safty_app/styles/k_text_style.dart';
import 'package:woman_safty_app/utils/extension.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<dynamic> featureImage = [
  AssetPath.liveChat,
  AssetPath.contactList,
  AssetPath.location,
  AssetPath.policeStation,
  ];

  List<String> features = [
    'Emergency Live Chat',
    'Emergency Contacts List',
    'Location Review',
    'Nearest Police Station',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KColor.icon,
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 65,
        title: Column(
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
        actions: const [
          Padding(
            padding: EdgeInsets.only(right:10.0),
            child: CircleAvatar(
              radius: 22,
              backgroundColor: KColor.white,
              backgroundImage: NetworkImage(
                'https://i.pinimg.com/originals/3c/57/c2/3c57c23d84f37f1bf85ea3f303d1b5c6.jpg',
                scale: 0.5,
              ),
            ),
          ),
        ],
      ),
      drawer: const KDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: context.screenHeight*0.4,
              color: Colors.lightBlue,
            ),
            SizedBox(height: context.screenHeight*0.1),
            GridView.builder(
              physics: const ScrollPhysics(),
              shrinkWrap: true,
              gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 6.0,
                mainAxisSpacing: 6.0,
                childAspectRatio: 9 / 10,
              ),
              itemCount: featureImage.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return FeatureCard(
                  img: Image.asset(featureImage[index].toString()),
                  title: features[index],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
