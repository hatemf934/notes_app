import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled(
      {super.key, required this.text, required this.widthVertical});
  final String text;
  final double widthVertical;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: const Color.fromARGB(255, 21, 225, 225),
      style: const TextStyle(color: Color.fromARGB(255, 21, 225, 225)),
      decoration: InputDecoration(
        contentPadding:
            EdgeInsets.symmetric(vertical: widthVertical, horizontal: 16),
        hintText: text,
        hintStyle: const TextStyle(
            fontSize: 18, color: Color.fromARGB(255, 21, 225, 225)),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: Colors.white.withOpacity(.3)),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              width: 2, color: Color.fromARGB(255, 21, 225, 225)),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
