import 'package:flutter/material.dart';

class IconBox extends StatelessWidget {
  const IconBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.05),
          borderRadius: BorderRadius.circular(16)),
      width: 46,
      height: 46,
      child: const Center(
        child: Icon(Icons.search),
      ),
    );
  }
}
