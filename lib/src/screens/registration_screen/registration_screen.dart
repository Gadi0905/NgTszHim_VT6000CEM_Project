import 'package:flutter/material.dart';
import 'package:ngtszhim_vt6000cem_project/src/helpers/images_path_helper/images_path_helper.dart';
import 'package:ngtszhim_vt6000cem_project/src/helpers/widgets_helper/appbar_widget/default_appbar_widget.dart';
import 'package:ngtszhim_vt6000cem_project/src/helpers/widgets_helper/background_widget/default_background_widget.dart';
import 'package:ngtszhim_vt6000cem_project/src/helpers/widgets_helper/button_widget/register_button_widget.dart';
import 'package:ngtszhim_vt6000cem_project/src/helpers/widgets_helper/button_widget/text_login_button_widget.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: DefaultAppBarWidget.basicColor(title: 'Registration Screen'),
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
          _buildImage(),
          const Spacer(),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            icon: Icon(Icons.person),
                            hintText: 'What do people call you?',
                            labelText: 'Name',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Column(
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
                    ),
                    const SizedBox(height: 20),
                    Column(
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
                    ),
                    const SizedBox(height: 20),
                    RegisterButtonWidget.basicColor(context, 'Create an account'),
                    const SizedBox(height: 10),
                    TextLoginButtonWidget.basicColor(context),
                  ],
                ),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }

  Widget _buildImage() {
    return Image.asset(
      ImagesPathHelper.imagePath('tree_seedlings.png'),
      width: 150,
      height: 150,
    );
  }
}
