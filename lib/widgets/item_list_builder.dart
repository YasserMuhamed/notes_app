import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_note_item.dart';

class ItemListView extends StatelessWidget {
  const ItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: ((context, index) {
      return const Padding(
        padding: EdgeInsets.symmetric(vertical: 4),
        child: NotesItem(),
      );
    }));
  }
}
