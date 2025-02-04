import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_button.dart';
import 'package:note_app/widgets/custom_text_feild.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: const SingleChildScrollView(
        child: Column(
          children: [
            CustomTextFiled(
              hint: "Title",
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextFiled(
              hint: "Content",
              maxlines: 5,
            ),
            SizedBox(
              height: 25,
            ),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}
