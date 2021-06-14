import 'package:flutter/material.dart';
import 'package:fluttergetx/pages/detail/detail_page.dart';
import 'package:fluttergetx/providers/network/models/user_model.dart';
import 'package:fluttergetx/repositories/search_repository.dart';
import 'package:get/get.dart';

class SearchUserController extends GetxController {
  SearchUserController({required SearchUserRepository repo}) : _repo = repo;

  final SearchUserRepository _repo;
  final users = <UserModel>[].obs;
  var isLoading = false.obs;

  search(String q) async {
    isLoading.value = true;
    final res = await _repo.search(q);
    users.clear();
    users.addAll(res);
    isLoading.value = false;
  }
}

extension NavigateHandle on SearchUserController {
  navigateDetai(UserModel user) {
    Get.to(
      () => DetailPage(
        user: user,
      ),
      preventDuplicates: false,
    );
  }
}
