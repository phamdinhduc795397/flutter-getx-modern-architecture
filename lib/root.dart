import 'package:flutter/material.dart';
import 'package:fluttergetx/controllers/auth/auth_controller.dart';
import 'package:fluttergetx/pages/home/home_page.dart';
import 'package:fluttergetx/pages/login/login_page.dart';
import 'package:get/get.dart';

class Root extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    return GetX(
      init: controller,
      builder: (_) {
        if (controller.isLoggedIn.value) {
          return HomePage();
        }
        return LoginPage();
      },
    );
  }
}
