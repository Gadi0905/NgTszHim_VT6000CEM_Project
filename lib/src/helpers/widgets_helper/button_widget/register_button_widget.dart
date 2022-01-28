import 'package:flutter/material.dart';
import 'package:ngtszhim_vt6000cem_project/src/helpers/routes_helper/routes_helper.dart';
import 'package:ngtszhim_vt6000cem_project/src/screens/registration_screen/registration_screen.dart';

class RegisterButtonWidget {
  static basicColor(BuildContext context, String title) {
    return SizedBox(
      height: 40,
      width: MediaQuery.of(context).size.width * 0.8,
      child: ElevatedButton(
        onPressed: () {
          RoutesHelper.pushScreen(context, const RegistrationScreen());
        },
        child: Text(title),
      ),
    );
  }
}