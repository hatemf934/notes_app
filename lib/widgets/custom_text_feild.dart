import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled(
      {super.key,
      required this.hint,
      this.maxlines = 1,
      this.onsave,
      this.validate});
  final String hint;
  final int maxlines;
  final Function(String?)? onsave;
  final String? Function(String?)? validate;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onsave,
      validator: validate,
      maxLines: maxlines,
      cursorColor: kPrimaryColor,
      style: const TextStyle(color: kPrimaryColor),
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        hintText: hint,
        errorBorder: buildOutLineBorder(Colors.red),
        focusedErrorBorder: buildOutLineBorder(Colors.red),
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
