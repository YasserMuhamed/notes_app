import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_text_form_field.dart';
import 'package:notes_app/widgets/notes_view_appbar.dart';

class EditNoteBody extends StatefulWidget {
  const EditNoteBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
  String? editedTitle, editedSubTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          CustomAppbar(
            onTapIcon: () {
              widget.note.title = editedTitle ?? widget.note.title;
              widget.note.subTitle = editedSubTitle ?? widget.note.subTitle;
              widget.note.save();
              Navigator.pop(context);
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            },
            title: "Edit Note",
            iconData: Icons.check,
          ),
          CustomTextFormField(
            onChange: (data) {
              editedTitle = data;
            },
            textPadding: const EdgeInsets.symmetric(vertical: 24),
            txtlabel: "Title",
          ),
          CustomTextFormField(
            onChange: (data) {
              editedSubTitle = data;
            },
            maxLines: 5,
            txtlabel: "Content",
          )
        ],
      ),
    );
  }
}
