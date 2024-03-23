import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app/widgets/item_list_builder.dart';
import 'package:notes_app/widgets/notes_view_appbar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

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
            title: "Notes",
            iconData: Icons.search,
            onTapIcon: () {},
          ),
          const Expanded(child: ItemListView())
        ],
      ),
    );
  }
}
