import 'package:flutter/material.dart';
import 'package:fluttergetx/controllers/home_controller.dart';
import 'package:fluttergetx/providers/network/models/repo_model.dart';
import 'package:fluttergetx/providers/network/models/user_model.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {
  DetailPage({Key key, this.repo, this.user}) : super(key: key);

  final RepoModel repo;
  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail")),
      body: Column(
        children: [Text(repo != null ? repo.fullName : user.login)],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class DemoPage extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Obx(() => Text("$controller.count"))),
      body: Center(
        child: Text("Demo"),
      ),
    );
  }
}
