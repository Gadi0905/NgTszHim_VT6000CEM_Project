import 'package:flutter/material.dart';
import 'package:ngtszhim_vt6000cem_project/src/helpers/images_path_helper/images_path_helper.dart';
import 'package:ngtszhim_vt6000cem_project/src/helpers/routes_helper/routes_helper.dart';
import 'package:ngtszhim_vt6000cem_project/src/helpers/widgets_helper/appbar_widget/default_appbar_widget.dart';
import 'package:ngtszhim_vt6000cem_project/src/helpers/widgets_helper/background_widget/default_background_widget.dart';
import 'package:ngtszhim_vt6000cem_project/src/helpers/widgets_helper/button_widget/text_login_button_widget.dart';
import 'package:ngtszhim_vt6000cem_project/src/screens/registration_screen/registration_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBarWidget.basicColor(title: 'Welcome Screen'),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return DefaultBackgroundWidget.basicColor(
      context: context,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          _buildWelcomeText(context),
          const Spacer(),
          _buildImage(context),
          const Spacer(),
          _buildRegisterButton(context),
          const SizedBox(height: 10),
          TextLoginButtonWidget.basicColor(context),
          const Spacer(),
        ],
      ),
    );
  }

  Widget _buildWelcomeText(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Welcome',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Create a new account to have fun with IoT planting.',
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImage(BuildContext context) {
    return Image.asset(
      ImagesPathHelper.imagePath('tree_seedlings.png'),
      width: 150,
      height: 150,
    );
  }

  Widget _buildRegisterButton(BuildContext context) {
    return SizedBox(
      height: 40,
      width: MediaQuery.of(context).size.width * 0.8,
      child: ElevatedButton(
        onPressed: () {
          RoutesHelper.pushScreen(context, const RegistrationScreen());
        },
        child: const Text('Getting started'),
      ),
    );
  }
}
