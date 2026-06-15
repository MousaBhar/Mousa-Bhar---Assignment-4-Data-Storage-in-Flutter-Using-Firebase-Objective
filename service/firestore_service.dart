
import 'package:cloud_firestore/cloud_firestore.dart';
import '../user_model.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  static const String _collection = 'users';

  Future<void> addUser(UserModel user) async {
    await _firestore.collection(_collection).add(user.toMap());
  }

  Future<List<UserModel>> getUsers() async {

    QuerySnapshot<Map<String, dynamic>> snapshot =
        await _firestore.collection(_collection).get();

    List<UserModel> users = snapshot.docs.map((doc) {
      return UserModel.fromMap(doc.id, doc.data());
    }).toList();

    return users;
  }

  Future<void> updateUser(String id, UserModel user) async {
    await _firestore.collection(_collection).doc(id).update(user.toMap());
  }

  Future<void> deleteUser(String id) async {
    await _firestore.collection(_collection).doc(id).delete();
  }
}
