import 'package:fluttergetx/controllers/search_user/search_user_controller.dart';
import 'package:fluttergetx/repositories/search_repository.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class SearchUserBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchUserController>(
        () => SearchUserController(repo: SearchUserRepository()));
  }
}
