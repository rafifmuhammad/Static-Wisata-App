import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.grey,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.person,
            color: Colors.white,
          ),
        ),
        FloatingActionButton(
          mini: true,
          backgroundColor: Colors.grey[200],
          onPressed: () {},
          child: Icon(
            Icons.notifications_outlined,
            color: Colors.black54,
          ),
        ),
      ],
    );
  }
}