import 'package:flutter/material.dart';
import 'package:ngtszhim_vt6000cem_project/src/helpers/routes_helper/routes_helper.dart';

class ArrowBackButtonWidget {
  // the basic style of arrow back button
  static basicStyle({
    required BuildContext context,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(25)),
          child: IconButton(
            onPressed: () {
              RoutesHelper.popToRoot(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new_rounded),
          ),
        ),
      ],
    );
  }
}
