import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.color, required this.isSelected});
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

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  List<Color> colors = const [
    Color(0xff04151F),
    Color(0xff183A37),
    Color.fromARGB(255, 39, 58, 87),
    Color(0xffC44900),
    Color(0xff432534)
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                currentIndex = index;
              });
            },
            child: ColorItem(
              isSelected: currentIndex == index ? true : false,
              color: colors[index],
            ),
          );
        },
      ),
    );
  }
}
