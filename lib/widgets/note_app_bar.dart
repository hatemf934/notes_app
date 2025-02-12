import 'package:flutter/material.dart';
import 'package:note_app/widgets/app_bar_icon.dart';

class NotesAppBar extends StatelessWidget {
  const NotesAppBar(
      {super.key,
      required this.textAppbar,
      required this.icon,
      this.onPressed});
  final String textAppbar;
  final IconData icon;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          textAppbar,
          style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        AppBarIcons(
          onPressed: onPressed,
          icon: icon,
        ),
      ],
    );
  }
}
