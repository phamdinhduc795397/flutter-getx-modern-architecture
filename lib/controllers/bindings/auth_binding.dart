import 'package:fluttergetx/controllers/auth_controller.dart';
import 'package:fluttergetx/providers/network/models/repo_model.dart';
import 'package:fluttergetx/repositories/auth_repository.dart';
import 'package:get/get.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<AuthController>(
        AuthController(authRepo: AuthenticationRepositoryIml()),
        permanent: true);
  }
}
