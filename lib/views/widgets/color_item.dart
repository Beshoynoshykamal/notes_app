import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key,required this.isActive,required this.color});
final  Color color;
final bool isActive ;
  @override
  Widget build(BuildContext context) {
    return isActive? CircleAvatar(
      backgroundColor:  Colors.white,
      radius: 38,
      child:CircleAvatar(
      backgroundColor: color,
      radius: 36,
    ) ,
    ):
    CircleAvatar(
      backgroundColor: color,
      radius: 38,
    );
  }
}