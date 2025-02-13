import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubits/addNotesCubit/add_note_cubit.dart';
import 'package:note_app/widgets/color_item.dart';

class ListColorItem extends StatefulWidget {
  const ListColorItem({super.key});
  @override
  State<ListColorItem> createState() => _ListColorItemState();
}

class _ListColorItemState extends State<ListColorItem> {
  int currentIndex = 0;
  List<Color> colors = const [
    Color(0xff889E73),
    Color(0xffFFF6DA),
    Color(0xffF4D793),
    Color(0xffA94A4A),
    Color(0xffF6DED8),
    Color(0xffF2B28C),
    Color(0xffD2665A),
    Color(0xffB82132),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kRaduis * 2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  BlocProvider.of<NotesCubit>(context).color = colors[index];
                  setState(() {});
                },
                child: ColorItem(
                  color: colors[index],
                  isActive: currentIndex == index,
                ),
              ),
            );
          }),
    );
  }
}
