import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ngtszhim_vt6000cem_project/src/helpers/routes_helper/routes_helper.dart';
import 'package:ngtszhim_vt6000cem_project/src/helpers/widgets_helper/background_widget/default_background_widget.dart';
import 'package:ngtszhim_vt6000cem_project/src/helpers/widgets_helper/button_widget/button_widget.dart';
import 'package:ngtszhim_vt6000cem_project/src/helpers/widgets_helper/button_widget/text_button_widget.dart';
import 'package:ngtszhim_vt6000cem_project/src/screens/not_logged_in_screens/registration_screen/registration_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  String errorMessage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            _buildBackButton(context),
            const Spacer(),
            _buildTitle(),
            const Spacer(),
            _buildCard(context),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  Widget _buildBackButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
          iconSize: 30,
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            RoutesHelper.pop(context);
          },
        )
      ],
    );
  }

  Widget _buildTitle() {
    return const Text(
      'Planting Prince',
      style: TextStyle(
        color: Colors.black,
        fontSize: 40,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildCard(BuildContext context) {
    return Form(
      key: _key,
      child: Card(
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildEmailField(),
              const SizedBox(height: 10),
              _buildPasswordField(),
              const SizedBox(height: 20),
              _buildLoginButton(),
              _buildTextButton(),
            ],
          ),
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
          validator: validateEmail,
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
          validator: validatePassword,
          decoration: const InputDecoration(
            icon: Icon(Icons.password),
            hintText: 'What is your password?',
            labelText: 'Password',
          ),
        ),
      ],
    );
  }

  Widget _buildLoginButton() {
    return ButtonWidget.basicStyle(
      context: context,
      title: 'Login',
      backgroundColor: Colors.blue,
      textColor: Colors.white,
      onPressItem: () {
        login();
      },
    );
  }

  Widget _buildTextButton() {
    return TextButtonWidget.basicStyle(
      context: context,
      question: 'Do not have an account?',
      title: 'Register Now',
      onPressItem: () {
        RoutesHelper.pushScreen(context, const RegistrationScreen());
      },
    );
  }

  Future login() async {
    if (_key.currentState!.validate()) {
      try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        );
        RoutesHelper.goToIndex(context);
        errorMessage = '';
      } on FirebaseAuthException catch (error) {
        errorMessage = error.message!;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(errorMessage)),
        );
      }
    }
  }
}

String? validateEmail(String? formEmail) {
  if (formEmail == null || formEmail.isEmpty) {
    return 'E-mail address is required';
  }
  String pattern = r'\w+@\w+\.\w+';
  RegExp regExp = RegExp(pattern);
  if (!regExp.hasMatch(formEmail)) {
    return 'Invalid E-mail address format';
  }
  return null;
}

String? validatePassword(String? formPassword) {
  if (formPassword == null || formPassword.isEmpty) {
    return 'Password is required';
  }
  String pattern =
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$';
  RegExp regExp = RegExp(pattern);
  if (!regExp.hasMatch(formPassword)) {
    return '''
    Password must be at least 8 characters, 
    include an uppercase letter, 
    number and symbol.
    ''';
  }
  return null;
}
