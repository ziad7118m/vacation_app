import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  TitleWidget({super.key,required this.title,this.radius = 40,this.paddingVertical = 8,this.marginTitle = 8});
  String title;
  double radius;
  double paddingVertical;
  double marginTitle;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(marginTitle),
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: paddingVertical),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: Color(0xff024383),
      ),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
