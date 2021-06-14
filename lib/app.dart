import 'package:flutter/material.dart';
import 'package:fluttergetx/controllers/auth/auth_binding.dart';
import 'package:fluttergetx/root.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/",
      initialBinding: AuthBinding(),
      home: Root(),
    );
  }
}
