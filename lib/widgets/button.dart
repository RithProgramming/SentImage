// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String name;
  final VoidCallback? onClicked;
  const Button({super.key, this.onClicked, required this.name});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onClicked,
      child: Text(
        name,
        style: const TextStyle(fontSize: 20),
      ),
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    );
  }
}
