import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note_app/constants.dart';
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
          const ListColorItem(),
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

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: kRaduis,
            backgroundColor: Colors.transparent,
            child: CircleAvatar(
              radius: kRaduis - 10,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: kRaduis,
            backgroundColor: color,
          );
  }
}

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
