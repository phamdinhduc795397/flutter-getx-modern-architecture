import 'package:flutter/material.dart';
import 'package:fluttergetx/controllers/auth_controller.dart';
import 'package:get/get.dart';

class LoginPage extends GetWidget<AuthController> {
  LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: Text("Login")),
          body: Center(
            child:
                TextButton(onPressed: controller.logIn, child: Text("Login")),
          ), // This trailing comma makes auto-formatting nicer for build methods.
        );
      },
    );
  }
}
