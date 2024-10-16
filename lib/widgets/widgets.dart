import 'package:flutter/material.dart';

class text_field extends StatelessWidget {
  const text_field({
    super.key,
    required this.controller,
    required this.size,
    required this.hint,
  });

  final TextEditingController controller;
  final Size size;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLength: 20,
      controller: controller,
      style: TextStyle(color: Colors.black, fontSize: size.height * 0.02),
      cursorColor: Colors.black,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
            width: 1,
            color: const Color.fromARGB(255, 24, 14, 85),
            style: BorderStyle.solid,
          ),
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(width: 10, style: BorderStyle.solid)),
        counterText: '',
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.black),
      ),
    );
  }
}
