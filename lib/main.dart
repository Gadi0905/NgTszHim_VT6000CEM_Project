import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ngtszhim_vt6000cem_project/src/screens/not_logged_in_screens/welcome_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Planting Prince',
      home: WelcomeScreen(), // initial screen
    );
  }
}
