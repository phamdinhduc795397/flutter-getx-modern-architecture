import 'package:fluttergetx/controllers/search_repo/search_repo_controller.dart';
import 'package:fluttergetx/repositories/search_repository.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class SearchRepoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchRepoController>(
        () => SearchRepoController(repo: SearchRepoRepository()));
  }
}
