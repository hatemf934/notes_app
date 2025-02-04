import 'package:flutter/material.dart';
import 'package:note_app/widgets/notes_body.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NotesBody(),
    );
  }
}
