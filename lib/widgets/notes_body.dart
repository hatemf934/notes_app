import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/displayNotes/display_notes_cubit.dart';
import 'package:note_app/widgets/custom_notes_list_view.dart';
import 'package:note_app/widgets/custom_search_delegate.dart';
import 'package:note_app/widgets/note_app_bar.dart';

class NotesBody extends StatefulWidget {
  const NotesBody({super.key});

  @override
  State<NotesBody> createState() => _NotesBodyState();
}

class _NotesBodyState extends State<NotesBody> {
  @override
  void initState() {
    BlocProvider.of<DisplayNotesCubit>(context).displayNote();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          NotesAppBar(
            onPressed: () {
              showSearch(context: context, delegate: MySearchDelegate());
            },
            icon: Icons.search,
            textAppbar: "Notes",
          ),
          const Expanded(
            child: NotesListViewBuilder(),
          ),
        ],
      ),
    );
  }
}
