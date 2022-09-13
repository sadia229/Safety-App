import 'dart:async';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:woman_safty_app/components/appbar/home_appbar.dart';
import 'package:woman_safty_app/components/card/feature_card.dart';
import 'package:woman_safty_app/components/drawer/k_drawer.dart';
import 'package:woman_safty_app/components/slider/k_slider.dart';
import 'package:woman_safty_app/constants/asset_path.dart';
import 'package:woman_safty_app/styles/k_color.dart';
import 'package:woman_safty_app/styles/k_text_style.dart';
import 'package:woman_safty_app/utils/extension.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double? lat;
  double? lon;
  String address = "";
  int _currentIndex = 0;

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

  final Completer<GoogleMapController> _controller = Completer();
  CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.43296265331129, -122.08832357078792),
    zoom: 14.4746,
  );

  void getCurrentLocation() async {
    bool isLocationServiceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!isLocationServiceEnabled) {
      Fluttertoast.showToast(msg: "Please keep your location on");
    }
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      LocationPermission asked = await Geolocator.requestPermission();
    } else {
      var position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      var lati = position.latitude;
      var long = position.longitude;
      lat = "$lati" as double?;
      lon = "$long" as double?;
      List<Placemark> p = await placemarkFromCoordinates(lati, long);
      Placemark place = p[0];
      setState(() {
        address = "${place.locality}, ${place.postalCode}, ${place.country}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(56),
          child: HomeAppBar(),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "See what's everyone talking about you",
                  style: KTextStyle.dialog.copyWith(
                    color: KColor.blackbg,
                  ),
                ),
                const SizedBox(height: 12),
                const KSlider(),
                Container(
                  height: context.screenHeight * 0.4,
                  color: Colors.lightBlue,
                  child: GoogleMap(
                    mapType: MapType.hybrid,
                    initialCameraPosition: _kGooglePlex,
                    onMapCreated: (GoogleMapController controller) {
                      _controller.complete(controller);
                    },
                  ),
                ),
                SizedBox(height: context.screenHeight * 0.05),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: GridView.builder(
                    physics: const ScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20.0,
                      mainAxisSpacing: 16.0,
                      childAspectRatio: 3 / 2,
                    ),
                    itemCount: featureImage.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return FeatureCard(
                        img: featureImage[index],
                        title: features[index],
                      );
                    },
                  ),
                ),
                SizedBox(height: context.screenHeight * 0.1),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
