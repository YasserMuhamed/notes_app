import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_form_field.dart';
import 'package:notes_app/widgets/notes_view_appbar.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

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
            onTapIcon: () {},
            title: "Edit Note",
            iconData: Icons.check,
          ),
          CustomTextFormField(
            textPadding: const EdgeInsets.symmetric(vertical: 24),
            txtlabel: "Title",
          ),
          CustomTextFormField(
            maxLines: 5,
            txtlabel: "Content",
          )
        ],
      ),
    );
  }
}
