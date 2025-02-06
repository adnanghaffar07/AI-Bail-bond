import 'package:code_automation_agent_app/apiClient/firebase_service.dart';
import 'package:code_automation_agent_app/controllers/user_controller.dart';
import 'package:code_automation_agent_app/repositories/user_repo.dart';
import 'package:get/get.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(FirebaseService());
    Get.lazyPut<AuthController>(() => AuthController());
    Get.lazyPut<UserRepository>(() => UserRepository());
  }
}
