import 'package:flutter/material.dart';
import 'package:note_app/widgets/app_bar_icon.dart';

class NotesAppBar extends StatelessWidget {
  const NotesAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          "Notes",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        AppBarIcons(),
      ],
    );
  }
}
