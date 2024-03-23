import 'package:flutter/material.dart';
import 'package:notes_app/widgets/icon_box.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
    required this.title,
    required this.iconData,
    required this.onTapIcon,
  });
  final String title;
  final IconData iconData;
  final VoidCallback onTapIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 24),
        ),
        IconBox(
          iconData: IconButton(onPressed: onTapIcon, icon: Icon(iconData)),
        )
      ],
    );
  }
}
