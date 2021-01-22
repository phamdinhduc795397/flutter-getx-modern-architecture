import 'package:flutter/material.dart';
import 'package:fluttergetx/controllers/auth_controller.dart';
import 'package:fluttergetx/pages/home/home_page.dart';
import 'package:fluttergetx/pages/login/login_page.dart';
import 'package:get/get.dart';

class Root extends GetWidget<AuthController> {
  @override
  Widget build(BuildContext context) {
    return GetX(
      builder: (_) {
        if (controller.isLoggedIn.value) {
          return HomePage();
        } else {
          return LoginPage();
        }
      },
    );
  }
}
