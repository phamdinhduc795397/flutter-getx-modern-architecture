import 'package:fluttergetx/controllers/auth/auth_controller.dart';
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
