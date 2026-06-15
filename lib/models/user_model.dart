// =====================================================================
// models/user_model.dart
// MVC Pattern - Model (من Chapter 6: Use model and classes for MVC Pattern)
// =====================================================================

class UserModel {
  final String? id;
  final String name;
  final String email;

  UserModel({
    this.id,
    required this.name,
    required this.email,
  });

  // Named constructor - من Chapter 6: "Named constructor"
  // Add() get a map for writing in firebase
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
    };
  }

  // Named constructor لاستخراج البيانات من Firebase
  factory UserModel.fromMap(String id, Map<String, dynamic> map) {
    return UserModel(
      id: id,
      name: map['name'] ?? '',
      email: map['email'] ?? '',
    );
  }
}
