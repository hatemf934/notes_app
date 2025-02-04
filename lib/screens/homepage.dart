import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/themecubit/cubit_theme.dart';
import 'package:note_app/widgets/note_tips.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.orange,
        appBar: AppBar(
          // backgroundColor: Colors.transparent,
          title: const Text(
            "Notes",
            style: TextStyle(
              // color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            Container(
              decoration: BoxDecoration(
                // color: Colors.grey,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        BlocProvider.of<ThemeCubit>(context).tochangetheme();
                      },
                      icon: const Icon(
                        Icons.dark_mode,
                        // color: Colors.white,
                        size: 40,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        // color: Colors.white,
                        size: 40,
                      )),
                ],
              ),
            )
          ],
        ),
        body: const Padding(
          padding: EdgeInsets.all(20),
          child: NoteTips(),
        ));
  }
}
