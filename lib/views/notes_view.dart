import 'package:flutter/material.dart';
import 'package:notes_app/widgets/appbar/notes_view_appbar.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const NotesViewAppbar(),
      ),
      body: const NotesViewBody(),
    );
  }
}
