import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note_app/cubits/addNotesCubit/add_note_cubit.dart';
import 'package:note_app/models/model_notes.dart';
import 'package:note_app/widgets/custom_button.dart';
import 'package:note_app/widgets/custom_text_feild.dart';

class NoteFormView extends StatefulWidget {
  const NoteFormView({
    super.key,
  });

  @override
  State<NoteFormView> createState() => _NoteFormViewState();
}

class _NoteFormViewState extends State<NoteFormView> {
  GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextFiled(
            onsave: (value) => {title = value},
            validate: (value) {
              if (value == null || value.trim().isEmpty) {
                return "field is required";
              } else {
                return null;
              }
            },
            hint: "Title",
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextFiled(
            onsave: (value) => {subTitle = value},
            validate: (value) {
              if (value == null || value.trim().isEmpty) {
                return "field is required";
              } else {
                return null;
              }
            },
            hint: "Content",
            maxlines: 5,
          ),
          const SizedBox(
            height: 25,
          ),
          BlocBuilder<NotesCubit, NotesState>(
            builder: (context, state) {
              return CustomButton(
                isloading: state is NotesLoading ? true : false,
                onpressed: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    var formattedDate =
                        DateFormat('MMMM dd, yyyy').format(DateTime.now());
                    var notesmodel = ModelNotes(
                        title: title!,
                        subtitle: subTitle!,
                        date: formattedDate,
                        color: Colors.blue.value);
                    BlocProvider.of<NotesCubit>(context).addNotes(notesmodel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
