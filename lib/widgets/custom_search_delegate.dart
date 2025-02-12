import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/model_notes.dart';
import 'package:note_app/widgets/note_tips.dart';

class MySearchDelegate extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = ''; // مسح الاستعلام
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null); // إغلاق واجهة البحث
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // عرض النتائج بناءً على الاستعلام
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final noteBox = Hive.box<ModelNotes>(kNotesHive);
    // تقديم اقتراحات أثناء الكتابة
    final suggestions = query.isEmpty
        ? []
        : noteBox.values
            .where((note) =>
                note.title.contains(query) || note.subtitle.contains(query))
            .toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) => NoteTips(
        note: suggestions[index],
      ),
    );
  }
}
