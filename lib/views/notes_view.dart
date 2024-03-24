import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/widgets/note_bottom_sheet.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: Colors.grey.shade900,
              barrierColor: Colors.black.withOpacity(.4),
              context: context,
              builder: (context) {
                return const NoteBottomSheet();
              });
        },
        child: const Icon(FontAwesomeIcons.plus),
      ),
    );
  }
}
