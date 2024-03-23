import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_form_field.dart';

class NoteBottomSheet extends StatelessWidget {
  const NoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView(children: [
        const SizedBox(
          height: 32,
        ),
        CustomTextFormField(
          txtlabel: "Title",
          fillColor: Colors.transparent,
        ),
        SizedBox(
          height: 16,
        ),
        CustomTextFormField(
          txtlabel: "Content",
          maxLines: 5,
          fillColor: Colors.transparent,
        ),
        SizedBox(
          height: 32,
        ),
        CustomButton()
      ]),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          "Add",
          style: TextStyle(color: Colors.grey.shade900, fontSize: 20),
        ),
      ),
    );
  }
}
