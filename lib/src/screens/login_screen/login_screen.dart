import 'package:flutter/material.dart';
import 'package:ngtszhim_vt6000cem_project/src/helpers/routes_helper/routes_helper.dart';
import 'package:ngtszhim_vt6000cem_project/src/helpers/widgets_helper/appbar_widget/default_appbar_widget.dart';
import 'package:ngtszhim_vt6000cem_project/src/helpers/widgets_helper/asset_image_widget/asset_image_widget.dart';
import 'package:ngtszhim_vt6000cem_project/src/helpers/widgets_helper/background_widget/default_background_widget.dart';
import 'package:ngtszhim_vt6000cem_project/src/helpers/widgets_helper/button_widget/button_widget.dart';
import 'package:ngtszhim_vt6000cem_project/src/helpers/widgets_helper/button_widget/text_button_widget.dart';
import 'package:ngtszhim_vt6000cem_project/src/screens/registration_screen/registration_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: DefaultAppBarWidget.basicColor(),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return DefaultBackgroundWidget.basicColor(
      context: context,
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            AssetImageWidget.basicImage(
                context: context, width: 150, height: 150),
            const Spacer(),
            _buildCard(context),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildEmailField(),
            const SizedBox(height: 20),
            _buildPasswordField(),
            const SizedBox(height: 20),
            ButtonWidget.basicStyle(
              context: context,
              title: 'Login',
              backgroundColor: Colors.blue,
              textColor: Colors.white,
              onPressItem: () {
                RoutesHelper.pushScreen(context, const LoginScreen());
              },
            ),
            const SizedBox(height: 10),
            TextButtonWidget.basicStyle(
              context: context,
              question: 'Do not have an account?',
              title: 'Register Now',
              onPressItem: () {
                RoutesHelper.pushScreen(context, const RegistrationScreen());
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmailField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          decoration: const InputDecoration(
            icon: Icon(Icons.email),
            hintText: 'What is your email address?',
            labelText: 'Email',
          ),
        ),
      ],
    );
  }

  Widget _buildPasswordField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          decoration: const InputDecoration(
            icon: Icon(Icons.password),
            hintText: 'What is your password?',
            labelText: 'Password',
          ),
        ),
      ],
    );
  }
}
