import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:notes_app/widgets/item-list/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [Expanded(child: NotesListView())],
      ),
    );
  }
}
