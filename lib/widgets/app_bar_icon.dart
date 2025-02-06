import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/themecubit/cubit_theme.dart';

class AppBarIcons extends StatelessWidget {
  const AppBarIcons({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
     
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.05),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Center(
        child: Row(
          children: [
            IconButton(
                onPressed: () {
                  BlocProvider.of<ThemeCubit>(context).tochangetheme();
                },
                icon: const Icon(
                  Icons.dark_mode,
                  size: 30,
                )),
            IconButton(onPressed: () {}, icon:Icon(
                  icon,
                  size: 30,
                )),
          ],
        ),
      ),
    );
  }
}
