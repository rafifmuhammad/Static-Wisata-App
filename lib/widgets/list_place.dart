import 'package:c_project_random_1/pages/detail_page.dart';
import 'package:c_project_random_1/tourism_place.dart';
import 'package:c_project_random_1/widgets/favorite_button.dart';
import 'package:flutter/material.dart';

class ListPlace extends StatelessWidget {
  const ListPlace({
    Key key,
    @required this.isFavorite,
  }) : super(key: key);

  final bool isFavorite;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      child: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          final TourismPlace place = listTourismPlace[index];
          return InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailPage(place: place,);
              }));
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 80,
                    height: 70,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                          place.image,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        place.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        place.location,
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FavoriteButton(isFavorite: isFavorite,),
                      SizedBox(
                        height: 25,
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          final TourismPlace place = listTourismPlace[index];
          return Divider();
        },
        itemCount: listTourismPlace.length,
      ),
    );
  }
}
