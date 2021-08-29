import 'package:c_project_random_1/widgets/header.dart';
import 'package:c_project_random_1/widgets/input_field.dart';
import 'package:c_project_random_1/widgets/list_category.dart';
import 'package:c_project_random_1/widgets/list_place.dart';
import 'package:c_project_random_1/widgets/title_text.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Header(),
                SizedBox(
                  height: 30,
                ),
                InputField(),
                SizedBox(
                  height: 20,
                ),
                TitleText(
                  title: 'Category',
                ),
                SizedBox(
                  height: 20,
                ),
                ListCategory(),
                SizedBox(
                  height: 30,
                ),
                TitleText(
                  title: 'Popular Destination',
                ),
                SizedBox(
                  height: 20,
                ),
                ListPlace(isFavorite: isFavorite),
              ],
            ),
          ),
        ),
      ),
    );
  }
}