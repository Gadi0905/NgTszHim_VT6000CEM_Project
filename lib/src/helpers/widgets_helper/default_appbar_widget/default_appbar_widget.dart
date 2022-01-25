import 'package:flutter/material.dart';

class DefaultAppBarWidget {
  static basicColor({String? title, Color? backgroundColor}) {
    return AppBar(
      title: Text(title ?? ''),
      backgroundColor: backgroundColor ?? Colors.blue,
    );
  }
}
