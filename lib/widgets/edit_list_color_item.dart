import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/model_notes.dart';
import 'package:note_app/widgets/color_item.dart';

class EditListColorItem extends StatefulWidget {
  const EditListColorItem({super.key, required this.note});
  final ModelNotes note;
  @override
  State<EditListColorItem> createState() => _EditListColorItemState();
}

class _EditListColorItemState extends State<EditListColorItem> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kRaduis * 2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: kColors.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  widget.note.color = kColors[index].value;
                  setState(() {});
                },
                child: ColorItem(
                  color: kColors[index],
                  isActive: currentIndex == index,
                ),
              ),
            );
          }),
    );
  }
}
