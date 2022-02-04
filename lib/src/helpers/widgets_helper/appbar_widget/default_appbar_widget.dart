import 'package:flutter/material.dart';

class DefaultAppBarWidget {
  // the basic color of app bar widget
  static basicColor({
    String? title,
    Color? backgroundColor,
  }) {
    return AppBar(
      title: Text(title ?? ''),
      backgroundColor: backgroundColor ?? Colors.blue,
    );
  }
}
