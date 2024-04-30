import 'dart:io';

import 'package:image_picker/image_picker.dart';

class ImageFunctions {
  static Future<File?> cameraPicker() async {
    var image = await ImagePicker().pickImage(source: ImageSource.camera);
    if (image != null) {
      return File(image.path);
    }
    return null;
  }

  static Future<File?> galleryPicker() async {
    var image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image != null) {
      return File(image.path);
    }

    return null;
  }
}
