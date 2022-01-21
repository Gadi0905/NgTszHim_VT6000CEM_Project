import 'package:flutter/material.dart';

class RoutesHelper {
  // go to a specific page
  static pushScreen(context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }
  // back to previous page
  static pop(context) {
    Navigator.pop(context);
  }
}
