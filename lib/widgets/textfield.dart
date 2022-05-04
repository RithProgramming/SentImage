import 'package:flutter/material.dart';

class TextField extends StatelessWidget {
  final TextEditingController? controller;
  const TextField({super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      maxLines: 1,
      keyboardType: TextInputType.text,
      showCursor: false,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 5.0,
          horizontal: 15.0,
        ),
        filled: true,
        fillColor: const Color.fromARGB(255, 236, 236, 236),
        labelText: 'Name',
        labelStyle:
            const TextStyle(fontSize: 16, color: Colors.grey, height: 1.3),
        errorStyle: const TextStyle(color: Colors.red, height: 0.3),
        enabledBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.white)),
        focusedBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.white)),
        errorBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.red)),
        focusedErrorBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.red)),
      ),
    );
  }
}
