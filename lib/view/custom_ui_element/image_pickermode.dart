import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';

enum ImagePickerMode {
  galary,
  camera,
}

class ImagePickerProvider {
  Future<File?> getImage({required ImagePickerMode mode}) async {
    File? imageData;
    XFile? tmpimageData;
    ImagePicker picker = ImagePicker();
    try {
      if (mode == ImagePickerMode.galary) {
        tmpimageData = await picker.pickImage(source: ImageSource.gallery);
      }

      if (mode == ImagePickerMode.camera) {
        tmpimageData = await picker.pickImage(source: ImageSource.camera);
      }
    } catch (e) {
      log(e.toString());
    }

    if (tmpimageData != null) {
      imageData = File(tmpimageData.path);
    }
    return imageData;
  }
}

class FilePickerProvider {
  File? image;
  final ImagePicker _picker = ImagePicker();

  Future<dynamic> showFileDialog(context, {bool? isDeleteView}) async {
    var resultData = await showModalBottomSheet(
      context: context,
      builder: (context) {
        return FilePickerDialog(isDeleteView: isDeleteView);
      },
    );
    if (resultData != null) {
      if (resultData == "camera") {
        XFile? tmpImage = await _picker.pickImage(source: ImageSource.camera);

        if (tmpImage != null) {
          log("Image Selected");
          image = File(tmpImage.path);
          return image;
        }
      } else if (resultData == "galary") {
        XFile? tmpImage = await _picker.pickImage(source: ImageSource.gallery);

        if (tmpImage != null) {
          log("Image Selected");
          image = File(tmpImage.path);
          return image;
        }
      } else if (resultData == "delete") {
        return true;
      }
    }
    return null;
  }
}

class FilePickerDialog extends StatelessWidget {
  final bool? isDeleteView;
  const FilePickerDialog({super.key, this.isDeleteView});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.all(10),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(bottom: 10),
              child: Center(
                child: Container(
                  height: 3,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context, "camera");
              },
              leading: const Icon(
                Icons.camera_alt,
              ),
              title: const Text(
                "Camera",
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context, "galary");
              },
              leading: const Icon(
                Icons.photo,
              ),
              title: const Text(
                "Gallery",
              ),
            ),
            if (isDeleteView != null && isDeleteView == true)
              ListTile(
                onTap: () {
                  Navigator.pop(context, "delete");
                },
                leading: const Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
                title: const Text(
                  "Remove Image",
                  style: TextStyle(color: Colors.red),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
