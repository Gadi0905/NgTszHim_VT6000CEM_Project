import 'package:flutter/material.dart';
import 'package:ngtszhim_vt6000cem_project/src/helpers/images_path_helper/images_path_helper.dart';
import 'package:ngtszhim_vt6000cem_project/src/helpers/routes_helper/routes_helper.dart';
import 'package:ngtszhim_vt6000cem_project/src/screens/login_screen/login_screen.dart';
import 'package:ngtszhim_vt6000cem_project/src/screens/register_screen/register_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Welcome Screen'),
        ),
        body: _buildBody(context));
  }

  Widget _buildBody(BuildContext context) {
    return Center(
        child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const Spacer(),
          Image.asset(
            ImagesPathHelper.imagePath("hello.png"),
          ),
          const Spacer(),
          const Text(
            'Welcome',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Create an account and start enjoying IoT planting',
            style: TextStyle(
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          const Spacer(),
          SizedBox(
            height: 40,
            width: MediaQuery.of(context).size.width * 0.8,
            child: ElevatedButton(
              onPressed: () {
                RoutesHelper.pushScreen(
                  context,
                  const RegisterScreen(),
                );
              },
              child: const Text('Getting started'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an account?',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
              TextButton(
                onPressed: () {
                  RoutesHelper.pushScreen(
                    context,
                    const LoginScreen(),
                  );
                },
                child: const Text("Login now"),
              )
            ],
          ),
          const Spacer(),
        ],
      ),
    ));
  }
}
