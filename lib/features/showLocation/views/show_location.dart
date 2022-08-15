// import 'dart:async';
// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:geocoding/geocoding.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:woman_safty_app/main.dart';
// import 'package:geolocator/geolocator.dart';
// import '../../../global_components/appBar/appBar.dart';
//
// class showLocation extends StatefulWidget {
//   const showLocation({Key? key}) : super(key: key);
//
//   @override
//   State<showLocation> createState() => _showLocationState();
// }
//
// class _showLocationState extends State<showLocation> {
//   var locationMsg = "";
//   var latLon;
//   String? lat;
//   String? lon;
//   String? currentAddress;
//   String? locationUpdate;
//   String? lastPosition;
//
//   Completer<GoogleMapController> _controller = Completer();
//   static final CameraPosition _kGooglePlex = CameraPosition(
//     // target: LatLng(),
//     zoom: 14.4746,
//   );
//
//   void getCurrentLocation() async {
//     bool isLocationServiceEnabled = await Geolocator.isLocationServiceEnabled();
//     if (!isLocationServiceEnabled) {
//       Fluttertoast.showToast(msg: "Please keep your location on");
//     }
//
//     // await Geolocator.checkPermission();
//     // await Geolocator.requestPermission();
//     LocationPermission permission = await Geolocator.checkPermission();
//     if (permission == LocationPermission.denied ||
//         permission == LocationPermission.deniedForever) {
//       print("Permission not given");
//       LocationPermission asked = await Geolocator.requestPermission();
//     } else {
//       var position = await Geolocator.getCurrentPosition(
//           desiredAccuracy: LocationAccuracy.high);
//       var lati = position.latitude;
//       var long = position.longitude;
//       lat = "$lati";
//       lon = "$long";
//       List<Placemark> p = await placemarkFromCoordinates(lati, long);
//       Placemark place = p[0];
//       setState(() {
//         locationMsg = "Latitude: $lat and Longitude $lon";
//         currentAddress =
//             "${place.locality}, ${place.postalCode}, ${place.country}";
//       });
//     }
//   }
//   void getLocationUpdates() {
//     final LocationSettings locationSettings =
//     LocationSettings(accuracy: LocationAccuracy.best, distanceFilter: 0);
//
//     StreamSubscription<ServiceStatus> serviceStatusStream =
//     Geolocator.getServiceStatusStream().listen((ServiceStatus status) {
//       print(status);
//     });
//
//     locationUpdate = serviceStatusStream.toString();
//   }
//
//   void getLastPosition() async {
//     var Lastposition = await Geolocator.getLastKnownPosition();
//     setState(() {
//       lastPosition = "${Lastposition?.latitude.toString()} and \n"
//           "${Lastposition?.longitude.toString()}";
//     });
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         appBar: PreferredSize(
//           preferredSize: Size.fromHeight(60),
//           child: KAppBar(
//             title: 'Show Map',
//           ),
//         ),
//         body: Container(
//           child: Column(
//             children: [
//               Container(
//                 height: MediaQuery.of(context).size.height * 0.5,
//                 child: GoogleMap(
//                   mapType: MapType.normal,
//                   initialCameraPosition: _kGooglePlex,
//                   onMapCreated: (GoogleMapController controller) {
//                     _controller.complete(controller);
//                   },
//                 ),
//               ),
//               SizedBox(height: 40),
//               Column(
//                 children: [
//                   Text(
//                     lat ?? "LOADING",
//                     style: TextStyle(color: Colors.black, fontSize: 18),
//                   ),
//                   SizedBox(height: 20),
//                   Text(
//                     lon ?? "LOADING",
//                     style: TextStyle(color: Colors.black, fontSize: 18),
//                   ),
//                   SizedBox(height: 20),
//                   Text(
//                     currentAddress ?? "LOADING",
//                     style: TextStyle(color: Colors.black, fontSize: 18),
//                   ),
//                   SizedBox(height: 20),
//                   Text(
//                     locationMsg,
//                     style: TextStyle(color: Colors.black, fontSize: 18),
//                   ),
//                   FlatButton(
//                     child: Text("Get location"),
//                     onPressed: () {
//                       getCurrentLocation();
//                     },
//                   ),
//                   Text(lastPosition ?? "LOADING"),
//                   ElevatedButton(
//                     child: Text('Get last location'),
//                     style: ElevatedButton.styleFrom(
//                       primary: Colors.green,
//                       textStyle: const TextStyle(
//                           color: Colors.white,
//                           fontSize: 15,
//                           fontStyle: FontStyle.normal),
//                     ),
//                     onPressed: () {
//                       getLastPosition();
//                     },
//                   ),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
