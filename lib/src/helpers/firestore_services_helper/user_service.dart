import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:ngtszhim_vt6000cem_project/src/helpers/models_helper/user_model.dart';

class UserService {
  UserService._();

  static final instance = UserService._();

  Future<UserModel> getUser() async {
    final uid = getUserID();
    if (uid == null) {
      throw Exception("User Not Found");
    }
    return getUserProfileByUid(uid: uid);
  }

  // get the user ID of the currently logged in user
  static String? getUserID() {
    return FirebaseAuth.instance.currentUser == null
        ? null
        : FirebaseAuth.instance.currentUser!.uid;
  }

  Future<UserModel> getUserProfileByUid({required String uid}) async {
    try {
      final _firebaseStore = FirebaseFirestore.instance;
      final user = await _firebaseStore.collection('users').doc(uid).get();
      // if(!user.exists){
      //   throw "User Not Found";
      // }
      return UserModel.fromJson(user.data() ?? {}, docId: user.id);
    } on Exception catch (e) {
      throw e.toString();
    }
  }
}
