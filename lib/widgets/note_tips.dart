import 'package:flutter/material.dart';
import 'package:note_app/models/model_notes.dart';
import 'package:note_app/screens/edit_note_view.dart';

class NoteTips extends StatelessWidget {
  const NoteTips({super.key, this.note});
  final ModelNotes? note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, EditNoteView.id);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Container(
          padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  note?.title ?? 'No Title',
                  style: const TextStyle(fontSize: 32, color: Colors.black),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Text(
                    note?.subtitle ?? 'No Title',
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.3), fontSize: 24),
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.delete,
                      size: 40,
                      color: Colors.black,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Text(note?.date ?? 'No Title',
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.3), fontSize: 16)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
