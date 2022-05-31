import 'package:flutter/material.dart';
import 'package:travel_app/utilities/colors.dart';

class CategoryCard extends StatelessWidget {
  final String title, image;
  final VoidCallback press;
  const CategoryCard({
    Key? key,
    required this.title,
    required this.image,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() => press),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(100),
        child: Container(
          height: 55,
          width: 150,
          decoration: BoxDecoration(
              color: kwhiteClr, borderRadius: BorderRadius.circular(100)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(image),
                ),
                SizedBox(
                  width: 3,
                ),
                Text(
                  title,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
