import 'package:code_automation_agent_app/apiClient/firebase_service.dart';
import 'package:code_automation_agent_app/models/user_models.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserRepository {
  final FirebaseService _firebaseService = FirebaseService();

  Future<User?> signIn(String email, String password) async {
    return await _firebaseService.signInWithEmailPassword(email, password);
  }

  Future<User?> register(String email, String password) async {
    return await _firebaseService.registerUser(email, password);
  }

  Future<UserModel> getUserData(String userId) async {
    return await _firebaseService.getUserData(userId);
  }

  Future<void> signOut() async {
    await _firebaseService.signOut();
  }
}
