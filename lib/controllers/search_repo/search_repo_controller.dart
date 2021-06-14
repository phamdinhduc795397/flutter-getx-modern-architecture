import 'package:flutter/material.dart';
import 'package:fluttergetx/pages/detail/detail_page.dart';
import 'package:fluttergetx/providers/network/models/repo_model.dart';
import 'package:fluttergetx/repositories/search_repository.dart';
import 'package:get/get.dart';

class SearchRepoController extends GetxController {
  SearchRepoController({required SearchRepoRepository repo}) : _repo = repo;
  final SearchRepoRepository _repo;

  var repos = <RepoModel>[].obs;
  var isLoading = false.obs;

  search(String q) async {
    isLoading.value = true;
    final res = await _repo.search(q);
    repos.clear();
    this.repos.addAll(res);
    isLoading.value = false;
  }
}

extension NavigateHandle on SearchRepoController {
  navigateDetai(RepoModel repo) {
    Get.to(
      () => DetailPage(
        repo: repo,
      ),
    );
  }
}
