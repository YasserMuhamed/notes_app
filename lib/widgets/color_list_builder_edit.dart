import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';

class ColorItemEdit extends StatelessWidget {
  const ColorItemEdit(
      {super.key, required this.color, required this.isSelected});
  final Color color;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: isSelected
          ? CircleAvatar(
              backgroundColor: Colors.white,
              radius: 34,
              child: CircleAvatar(
                radius: 31,
                backgroundColor: color,
              ),
            )
          : CircleAvatar(
              radius: 34,
              backgroundColor: color,
            ),
    );
  }
}

class ColorListViewEdit extends StatefulWidget {
  const ColorListViewEdit({super.key, required this.note});
  final NoteModel note;

  @override
  State<ColorListViewEdit> createState() => _ColorListViewEditState();
}

class _ColorListViewEditState extends State<ColorListViewEdit> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        itemCount: kColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                currentIndex = index;
                widget.note.color = kColors[index].value;
              });
            },
            child: ColorItemEdit(
              isSelected: currentIndex == index ? true : false,
              color: kColors[index],
            ),
          );
        },
      ),
    );
  }
}
