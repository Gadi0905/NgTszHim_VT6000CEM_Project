import 'package:flutter/material.dart';
import 'package:ngtszhim_vt6000cem_project/src/helpers/widgets_helper/asset_image_widget/asset_image_widget.dart';
import 'package:ngtszhim_vt6000cem_project/src/helpers/widgets_helper/button_widget/button_widget.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          _buildUserIcon(context),
          const Spacer(),
          _buildUserInfo('User Name: Gadi'),
          const SizedBox(height: 10),
          _buildUserInfo('Email: gadi0905@gmail.com'),
          const Spacer(),
          ButtonWidget.basicStyle(context: context,title: 'Logout', onPressItem: () {}),
          const Spacer(),
        ],
      ),
    );
  }

  Widget _buildUserIcon(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: AssetImageWidget.basicImage(context: context),
      ),
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
}
