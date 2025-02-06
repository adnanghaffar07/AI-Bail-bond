import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String id;
  final String email;

  UserModel({required this.id, required this.email});

  factory UserModel.fromFirebaseUser(User user) {
    return UserModel(id: user.uid, email: user.email ?? '');
  }

  factory UserModel.fromDocument(DocumentSnapshot doc) {
    return UserModel(
      id: doc.id,
      email: doc['email'] ?? '',
    );
  }
}
