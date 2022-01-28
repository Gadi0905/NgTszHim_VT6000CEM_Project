import 'package:flutter/material.dart';

class DefaultBackgroundWidget {
  static basicColor({
    Color? topColor,
    Color? middleColor,
    Color? bottomColor,
    Widget? child,
    required BuildContext context,
  }) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            topColor ?? Colors.lightBlue,
            middleColor ?? Colors.lightBlueAccent,
            bottomColor ?? Colors.white
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: child,
    );
  }
}
