import 'package:flutter/material.dart';
import 'package:ngtszhim_vt6000cem_project/src/helpers/images_path_helper/images_path_helper.dart';

class AssetImageWidget {
  // the basic asset image widget
  static basicImage({
    required BuildContext context,
    String? image,
    double? width,
    double? height,
  }) {
    return Image.asset(
      ImagesPathHelper.imagePath(image ?? 'tree_seedlings.png'),
      width: width ?? 100,
      height: height ?? 100,
    );
  }
}
