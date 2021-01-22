import 'package:flutter/material.dart';
import 'package:fluttergetx/controllers/bindings/auth_binding.dart';
import 'package:fluttergetx/controllers/bindings/search_repo_binding.dart';
import 'package:fluttergetx/pages/search/search_user_page.dart';
import 'package:fluttergetx/root.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/",
      initialBinding: AuthBinding(),
      home: Root(),
      // getPages: [
      //   GetPage(
      //       name: "/", page: () => SearchPage(), binding: SearchRepoBinding())
      // ],
    );
  }
}
