import 'package:flutter/material.dart';

class IconTile extends StatelessWidget {
  IconData icon;
  String text;

  IconTile({this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon),
        SizedBox(height: 10),
        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
