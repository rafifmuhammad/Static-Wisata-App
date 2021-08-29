import 'package:flutter/material.dart';

class FavoriteButton extends StatefulWidget {
  bool isFavorite;

  FavoriteButton({this.isFavorite});

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: (widget.isFavorite)
          ? Icon(
              Icons.favorite,
              color: Colors.red,
            )
          : Icon(
              Icons.favorite_outline,
              color: Colors.grey,
            ),
      onPressed: () {
        setState(() {
          widget.isFavorite = !widget.isFavorite;
        });
      },
    );
  }
}
