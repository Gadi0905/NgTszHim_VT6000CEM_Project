import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ngtszhim_vt6000cem_project/src/helpers/routes_helper/routes_helper.dart';
import 'package:ngtszhim_vt6000cem_project/src/helpers/widgets_helper/asset_image_widget/asset_image_widget.dart';
import 'package:ngtszhim_vt6000cem_project/src/helpers/widgets_helper/button_widget/button_widget.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  String errorMessage = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          _buildImage(context),
          const Spacer(),
          _buildUserInfo('User Name: Gadi'),
          const SizedBox(height: 10),
          _buildUserInfo('Email: gadi0905@gmail.com'),
          const Spacer(),
          _buildLogoutButton(),
          const Spacer(),
        ],
      ),
    );
  }

  Widget _buildImage(BuildContext context) {
    return AssetImageWidget.basicImage(
      context: context,
      width: 150,
      height: 150,
    );
  }

  Widget _buildUserInfo(String title) {
    return SizedBox(
      height: 60,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(title),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLogoutButton() {
    return ButtonWidget.basicStyle(
      context: context,
      title: 'Logout',
      onPressItem: () async {
        try {
          await FirebaseAuth.instance.signOut();
          RoutesHelper.pop(context);
          errorMessage = '';
        } on FirebaseAuthException catch (error) {
          errorMessage = error.message!;
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(errorMessage)),
          );
        }
      },
    );
  }
}
