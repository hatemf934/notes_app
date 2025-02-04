import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key, required this.hint, this.maxlines = 1});
  final String hint;
  final int maxlines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxlines,
      cursorColor: kPrimaryColor,
      style: const TextStyle(color: kPrimaryColor),
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        hintText: hint,
        enabledBorder: buildOutLineBorder(),
        focusedBorder: buildOutLineBorder(kPrimaryColor),
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
