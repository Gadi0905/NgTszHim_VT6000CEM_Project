import 'package:flutter/material.dart';
import 'package:ngtszhim_vt6000cem_project/src/helpers/routes_helper/routes_helper.dart';
import 'package:ngtszhim_vt6000cem_project/src/screens/login_screen/login_screen.dart';

class TextLoginButtonWidget {
  // the basic color of text login button
  static basicColor({required BuildContext context}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Already have an account?'),
        TextButton(
          onPressed: () {
            // when the button is clicked, go to login screen
            RoutesHelper.pushScreen(context, const LoginScreen());
          },
          child: const Text(
            'Login now',
            style: TextStyle(color: Colors.blue),
          ),
        )
      ],
    );
  }
}
