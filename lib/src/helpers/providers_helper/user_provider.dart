import 'package:flutter/material.dart';
import 'package:ngtszhim_vt6000cem_project/src/helpers/models_helper/user_model.dart';

class UserProvider extends ChangeNotifier {
  late UserModel _item;
  UserModel get item => _item;

  set item(UserModel value) {
    _item = value;
    notifyListeners();
  }
}