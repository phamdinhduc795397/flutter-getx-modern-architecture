import 'package:flutter/material.dart';
import 'package:fluttergetx/providers/network/models/repo_model.dart';
import 'package:fluttergetx/providers/network/models/user_model.dart';

class DetailPage extends StatelessWidget {
  DetailPage({Key? key, this.repo, this.user}) : super(key: key);

  RepoModel? repo;
  UserModel? user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail")),
      body: Column(
        children: [
          if (repo != null)
            Text(repo?.fullName ?? "")
          else
            Text(user?.login ?? "")
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
