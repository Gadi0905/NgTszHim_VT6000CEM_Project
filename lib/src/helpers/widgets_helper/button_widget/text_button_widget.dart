import 'package:flutter/material.dart';

class TextButtonWidget {
  // the basic style of text button
  static basicStyle({
    required BuildContext context,
    String? question,
    Function()? onPressItem,
    String? title,
    Color? textColor,
    Color? questionColor,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          question ?? 'question',
          style: TextStyle(color: questionColor ?? Colors.black),
        ),
        TextButton(
          onPressed: onPressItem,
          child: Text(
            title ?? 'title',
            style: TextStyle(color: textColor ?? Colors.blue),
          ),
        ),
      ],
    );
  }
}
