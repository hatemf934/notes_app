import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubits/themecubit/cubit_state.dart';
import 'package:note_app/cubits/themecubit/cubit_theme.dart';
import 'package:note_app/models/model_theme.dart';
import 'package:note_app/screens/edit_note_view.dart';
import 'package:note_app/screens/homepage.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesHive);
  runApp(
    const NoteApp(),
  );
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeCubitState>(
        builder: (context, state) {
          return MaterialApp(
            initialRoute: Homepage.id,
            routes: {
              Homepage.id: (context) => const Homepage(),
              EditNoteView.id: (context) => const EditNoteView(),
            },
            theme: state == ThemeCubitState.dark
                ? ModelTheme().darkmode
                : ModelTheme().lightmode,
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
