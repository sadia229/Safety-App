import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:woman_safty_app/routes/route_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Woman Safety App',
      initialRoute: '/splash',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
