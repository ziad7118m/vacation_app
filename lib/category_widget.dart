
import 'package:flutter/material.dart';
import 'package:magazine/title_widget.dart';

class CategoryWidget extends StatelessWidget {
  String imagePath;
  String title;
  CategoryWidget({super.key,required this.imagePath,required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.red,
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(
            imagePath,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),
          TitleWidget(title: title),
        ],
      ),
    );
  }
}
