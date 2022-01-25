import 'package:flutter/material.dart';

class DefaultBackgroundWidget {
  static basicColor({Color? topColor, Color? bottomColor, Widget? child}) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            topColor ?? Colors.white,
            bottomColor ?? Colors.lightBlueAccent
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: child,
    );
  }
}
