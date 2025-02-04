import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_button.dart';
import 'package:note_app/widgets/custom_text_feild.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: const Column(
        children: [
          CustomTextFiled(
            text: "Title",
            widthVertical: 16,
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextFiled(
            text: "Content",
            widthVertical: 60,
          ),
          Spacer(),
          CustomButton(),
        ],
      ),
    );
  }
}
