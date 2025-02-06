import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:code_automation_agent_app/models/user_models.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class FirebaseService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Sign In
  Future<User?> signInWithEmailPassword(String email, String password) async {
    try {
      final userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } catch (e) {
      debugPrint('Sign-In Failed: $e');
      rethrow;
    }
  }

  // Register User
  Future<User?> registerUser(String email, String password) async {
    try {
      final userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } catch (e) {
      debugPrint('Register Failed: $e');
      rethrow;
    }
  }

  // Get User Data
  Future<UserModel> getUserData(String userId) async {
    try {
      final snapshot = await _firestore.collection('users').doc(userId).get();
      if (snapshot.exists) {
        return UserModel.fromDocument(snapshot);
      } else {
        throw Exception('User not found');
      }
    } catch (e) {
      debugPrint('Get User Data Failed: $e');
      rethrow;
    }
  }

  // Add Data to Firestore
  Future<void> addDataToFirestore(
      String collection, Map<String, dynamic> data) async {
    try {
      await _firestore.collection(collection).add(data);
    } catch (e) {
      debugPrint('Firestore Add Failed: $e');
      rethrow;
    }
  }

  // Sign Out
  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      debugPrint('Sign Out Failed: $e');
      rethrow;
    }
  }
}
