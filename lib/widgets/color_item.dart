import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: kRaduis,
            backgroundColor: Colors.transparent,
            child: CircleAvatar(
              radius: kRaduis - 10,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: kRaduis,
            backgroundColor: color,
          );
  }
}
