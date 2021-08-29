import 'package:flutter/material.dart';

class MyIcon extends StatelessWidget {
  IconData icon;
  Function onPressed;
  Color iconColor;

  MyIcon({this.icon, this.onPressed, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 20, 10, 20),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(
          icon,
          color: iconColor,
        ),
        onPressed: onPressed,
        color: Colors.white,
      ),
    );
  }
}
