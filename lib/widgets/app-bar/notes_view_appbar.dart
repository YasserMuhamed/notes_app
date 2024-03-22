import 'package:flutter/material.dart';
import 'package:notes_app/widgets/appbar/icon_box.dart';

class NotesViewAppbar extends StatelessWidget {
  const NotesViewAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Notes",
            style: TextStyle(fontSize: 24),
          ),
          IconBox()
        ],
      ),
    );
  }
}
