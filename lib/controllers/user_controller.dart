import 'package:code_automation_agent_app/models/user_models.dart';
import 'package:code_automation_agent_app/repositories/user_repo.dart';
import 'package:code_automation_agent_app/utills/loggers.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final UserRepository _userRepository = UserRepository();

  var user = Rxn<UserModel>();
  var isLoading = false.obs;
  var errorMessage = ''.obs;

  // Sign In function
  Future<void> signIn(String email, String password) async {
    try {
      isLoading(true);
      var firebaseUser = await _userRepository.signIn(email, password);
      if (firebaseUser != null) {
        user.value = UserModel.fromFirebaseUser(firebaseUser);
        errorMessage.value = '';
      } else {
        errorMessage.value = 'Sign In Failed';
      }
    } catch (e) {
      errorMessage.value = 'Error: ${e.toString()}';
      Logger.logError('Sign-In Error: $e');
    } finally {
      isLoading(false);
    }
  }

  // Register function
  Future<void> register(String email, String password) async {
    try {
      isLoading(true);
      var firebaseUser = await _userRepository.register(email, password);
      if (firebaseUser != null) {
        user.value = UserModel.fromFirebaseUser(firebaseUser);
        errorMessage.value = '';
      } else {
        errorMessage.value = 'Registration Failed';
      }
    } catch (e) {
      errorMessage.value = 'Error: ${e.toString()}';
      Logger.logError('Register Error: $e');
    } finally {
      isLoading(false);
    }
  }

  // Sign Out function
  Future<void> signOut() async {
    await _userRepository.signOut();
    user.value = null;
  }
}
