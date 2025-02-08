import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onpressed});
  final Function()? onpressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ElevatedButton(
          onPressed: onpressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: kPrimaryColor,
              foregroundColor: Colors.black,
              textStyle: const TextStyle(
                fontSize: 20,
              ),
              padding:
                  const EdgeInsets.symmetric(vertical: 16, horizontal: 177),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              )),
          child: const Text("Add")),
    );
  }
}
