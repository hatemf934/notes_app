import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/themecubit/cubit_state.dart';
import 'package:note_app/cubits/themecubit/cubit_theme.dart';
import 'package:note_app/models/model_theme.dart';
import 'package:note_app/screens/homepage.dart';

void main() {
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
            theme: state == ThemeCubitState.dark
                ? ModelTheme().darkmode
                : ModelTheme().lightmode,
            home: Homepage(),
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
