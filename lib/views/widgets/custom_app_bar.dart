import 'package:flutter/material.dart';

import 'custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key,required this.icon,required this.title,this.onPressed});
final String title;
final IconData icon;
final  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
       
        Text(title, style: TextStyle(fontSize: 28),),
        Spacer(),
        CustomIcon(icon:icon ,onPressed:onPressed ,),
      ],
    );
  }
}