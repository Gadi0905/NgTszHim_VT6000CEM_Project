import 'package:flutter/material.dart';
import 'package:ngtszhim_vt6000cem_project/src/helpers/images_path_helper/images_path_helper.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: Image.asset(
          ImagesPathHelper.imagePath("hello.png"),
        ),
      ),
    );
  }
}
