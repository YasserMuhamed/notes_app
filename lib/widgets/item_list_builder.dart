import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_note_item.dart';

class ItemListBuilder extends StatelessWidget {
  const ItemListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemBuilder: ((context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 4),
              child: NotesItem(),
            );
          })),
    );
  }
}
