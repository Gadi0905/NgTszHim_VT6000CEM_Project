import 'package:flutter/material.dart';
import 'package:ngtszhim_vt6000cem_project/src/helpers/routes_helper/routes_helper.dart';
import 'package:ngtszhim_vt6000cem_project/src/screens/registration_screen/registration_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen'),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [Colors.white, Colors.lightBlueAccent],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
      child: Center(
        child: SizedBox(
          height: 40,
          width: MediaQuery.of(context).size.width * 0.8,
          child: ElevatedButton(
            child: const Text('Registration Screen'),
            onPressed: () {
              RoutesHelper.pushScreen(context, const RegistrationScreen());
            },
          ),
        ),
      ),
    );
  }
}
