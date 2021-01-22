import 'package:flutter/material.dart';
import 'package:fluttergetx/controllers/search_repo_controller.dart';
import 'package:get/get.dart';

class SearchRepoPage extends StatelessWidget {
  SearchRepoPage({Key key, this.title}) : super(key: key);
  final String title;
  final textController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return GetX<SearchRepoController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(title: Text(title)),
          body: Column(
            children: [
              Row(
                children: [
                  Flexible(
                      child: TextField(
                    controller: textController,
                  )),
                  TextButton(
                      onPressed: () {
                        controller.searchRepo(textController.text);
                      },
                      child: Icon(Icons.search))
                ],
              ),
              Expanded(
                  child: ListView(
                children: controller.repos.toList().map((element) {
                  return GestureDetector(
                    child: ListTile(
                      title: Text(element.fullName),
                    ),
                    onTap: () {
                      controller.navigateDetai(element);
                    },
                  );
                }).toList(),
              ))
            ],
          ), // This trailing comma makes auto-formatting nicer for build methods.
        );
      },
    );
  }
}
