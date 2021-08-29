import 'package:flutter/material.dart';
import 'category.dart';

class ListCategory extends StatelessWidget {
  const ListCategory({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Category(
          color: Colors.blue,
          image:
              'https://image.freepik.com/free-vector/most-popular-badge-sticker-round-label_100456-1067.jpg',
          text: 'Popular',
          textColor: Colors.white,
        ),
        Category(
          color: Colors.white,
          image:
              'https://image.freepik.com/free-vector/most-popular-badge-sticker-round-label_100456-1067.jpg',
          text: 'Sports',
          textColor: Colors.black,
        ),
        Category(
          color: Colors.white,
          image:
              'https://image.freepik.com/free-vector/most-popular-badge-sticker-round-label_100456-1067.jpg',
          text: 'Beach',
          textColor: Colors.black,
        ),
      ],
    );
  }
}