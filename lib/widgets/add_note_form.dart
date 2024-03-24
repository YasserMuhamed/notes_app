import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import 'package:notes_app/cubits/add_name_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/color_list_Builder.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_form_field.dart';

class FormSheetCard extends StatefulWidget {
  const FormSheetCard({
    super.key,
  });

  @override
  State<FormSheetCard> createState() => _FormSheetCardState();
}

class _FormSheetCardState extends State<FormSheetCard> {
  GlobalKey<FormState> key = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: key,
      autovalidateMode: autovalidateMode,
      child: Container(
        padding: EdgeInsets.only(
            left: 16,
            right: 16,
            bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextFormField(
            onSaved: (value) {
              title = value;
            },
            validate: (data) {
              if (data?.isEmpty == true) {
                return "Field is required";
              } else {
                return null;
              }
            },
            txtlabel: "Title",
            fillColor: Colors.transparent,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            onSaved: (value) {
              subTitle = value;
            },
            validate: (data) {
              if (data?.isEmpty == true) {
                return "Field is required";
              } else {
                return null;
              }
            },
            txtlabel: "Content",
            maxLines: 5,
            fillColor: Colors.transparent,
          ),
          ColorListView(),
          Button_method(),
          const SizedBox(
            height: 16,
          )
        ]),
      ),
    );
  }

  BlocBuilder<AddNoteCubit, AddNoteState> Button_method() {
    return BlocBuilder<AddNoteCubit, AddNoteState>(
      builder: (context, state) {
        return CustomButton(
          isLoading: state is AddNoteLoading ? true : false,
          ontap: () {
            if (key.currentState!.validate()) {
              var currentDate = DateTime.now();
              var formattedCurrentDate = DateFormat.yMd().format(currentDate);
              key.currentState!.save();
              NoteModel noteModel = NoteModel(
                  title: title!,
                  subTitle: subTitle!,
                  date: formattedCurrentDate,
                  color: Colors.blue.value);
              BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
            } else {
              autovalidateMode = AutovalidateMode.always;
              setState(() {});
            }
          },
        );
      },
    );
  }
}
