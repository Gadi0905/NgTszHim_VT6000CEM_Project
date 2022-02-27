import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ngtszhim_vt6000cem_project/src/helpers/routes_helper/routes_helper.dart';
import 'package:ngtszhim_vt6000cem_project/src/helpers/widgets_helper/appbar_widget/default_appbar_widget.dart';
import 'package:ngtszhim_vt6000cem_project/src/helpers/widgets_helper/asset_image_widget/asset_image_widget.dart';
import 'package:ngtszhim_vt6000cem_project/src/helpers/widgets_helper/background_widget/default_background_widget.dart';
import 'package:ngtszhim_vt6000cem_project/src/helpers/widgets_helper/button_widget/button_widget.dart';
import 'package:ngtszhim_vt6000cem_project/src/screens/logged_in_screens/index_screen.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

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
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildEmailField(),
            const SizedBox(height: 20),
            _buildPasswordField(),
            const SizedBox(height: 20),
            ButtonWidget.basicStyle(
              context: context,
              title: 'Create an account',
              backgroundColor: Colors.blue,
              textColor: Colors.white,
              onPressItem: () async {
                await FirebaseAuth.instance.createUserWithEmailAndPassword(
                    email: emailController.text,
                    password: passwordController.text,
                );
                RoutesHelper.pushScreen(context, const IndexScreen());
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
          controller: emailController,
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
          controller: passwordController,
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
