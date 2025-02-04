import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key, required this.hint, this.maxlines = 1});
  final String hint;
  final int maxlines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxlines,
      cursorColor: const Color.fromARGB(255, 21, 225, 225),
      style: const TextStyle(color: Color.fromARGB(255, 21, 225, 225)),
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        hintText: hint,
        enabledBorder: buildOutLineBorder(),
        focusedBorder:
            buildOutLineBorder(const Color.fromARGB(255, 21, 225, 225)),
      ),
    );
  }

  OutlineInputBorder buildOutLineBorder([color]) {
    return OutlineInputBorder(
      borderSide:
          BorderSide(width: 2, color: color ?? Colors.white.withOpacity(.3)),
      borderRadius: BorderRadius.circular(8),
    );
  }
}
