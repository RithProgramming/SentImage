import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class PickImage extends StatelessWidget {
  final PlatformFile? pickedImage;
  final void Function()? onClicked;
  const PickImage({super.key, this.pickedImage, this.onClicked});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          (pickedImage != null)
              ? ClipOval(
                  child: Image.file(
                    File(pickedImage!.path!),
                    width: 160,
                    height: 160,
                    fit: BoxFit.cover,
                  ),
                )
              : const FlutterLogo(size: 160),
          Positioned(
            bottom: 0,
            right: 0,
            child: iconImage(
              Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget iconImage(Color color) => buildCircle(
        all: 3,
        color: Colors.white,
        child: buildCircle(
          color: color,
          all: 0,
          child: IconButton(
            splashColor: Colors.grey,
            onPressed: onClicked,
            icon: const Icon(
              Icons.add_photo_alternate,
              color: Colors.white,
              size: 25,
            ),
          ),
        ),
      );

  Widget buildCircle({
    required Widget child,
    required double all,
    required Color color,
  }) =>
      ClipOval(
        child: Container(
          padding: EdgeInsets.all(all),
          color: color,
          child: child,
        ),
      );
}
