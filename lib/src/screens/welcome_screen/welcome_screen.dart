import 'package:flutter/material.dart';
import 'package:ngtszhim_vt6000cem_project/src/helpers/routes_helper/routes_helper.dart';
import 'package:ngtszhim_vt6000cem_project/src/helpers/widgets_helper/default_background_widget/default_background_widget.dart';
import 'package:ngtszhim_vt6000cem_project/src/screens/login_screen/login_screen.dart';
import 'package:ngtszhim_vt6000cem_project/src/screens/registration_screen/registration_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome Screen'),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return DefaultBackgroundWidget.basicColor(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          const Text(
            'Welcome',
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Create a new account to have fun with IoT planting.',
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          _buildRegisterButton(context),
          const SizedBox(height: 20),
          _buildLoginButton(context),
          const Spacer(),
        ],
      ),
    );
  }

  Widget _buildRegisterButton(BuildContext context) {
    return SizedBox(
          height: 40,
          width: MediaQuery.of(context).size.width * 0.6,
          child: ElevatedButton(
            onPressed: () {
              RoutesHelper.pushScreen(context, const RegistrationScreen());
            },
            child: const Text('Getting started'),
          ),
        );
  }

  Widget _buildLoginButton(BuildContext context) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Already have an account?'),
            TextButton(
              onPressed: () {
                RoutesHelper.pushScreen(context, const LoginScreen());
              },
              child: const Text(
                'Login now',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        );
  }
}
