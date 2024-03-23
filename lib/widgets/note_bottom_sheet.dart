import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_form_field.dart';

class NoteBottomSheet extends StatelessWidget {
  const NoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const FormSheetCard();
  }
}

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
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(children: [
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
          const SizedBox(
            height: 32,
          ),
          CustomButton(
            ontap: () {
              if (key.currentState!.validate()) {
                key.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          )
        ]),
      ),
    );
  }
}
