import 'package:c_project_random_1/tourism_place.dart';
import 'package:c_project_random_1/widgets/icon_tile.dart';
import 'package:c_project_random_1/widgets/my_icon.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  double mySize(BuildContext context) =>
      MediaQuery.of(context).size.height * 0.29;
    
  TourismPlace place;

  DetailPage({this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Stack(
              children: [
                Image.network(place.image),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyIcon(
                      icon: Icons.arrow_back,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      iconColor: Colors.black,
                    ),
                    MyIcon(
                      icon: Icons.bookmark,
                      iconColor: Colors.red,
                      onPressed: () {},
                    )
                  ],
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: mySize(context)),
              padding: const EdgeInsets.all(30),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        place.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        place.location,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            place.rating,
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      RaisedButton(
                        onPressed: () {},
                        color: Colors.blue,
                        shape: StadiumBorder(),
                        child: Text(
                          'Check Availability',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'About Trip',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    place.description,
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "What's Included?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconTile(
                        icon: Icons.flight,
                        text: 'Flight',
                      ),
                      IconTile(
                        icon: Icons.hotel,
                        text: 'Hotel',
                      ),
                      IconTile(
                        icon: Icons.emoji_transportation,
                        text: 'Transfer',
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Total cost',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              Text(
                                '\$${place.price} ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                '/ person',
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      RaisedButton(
                        onPressed: () {},
                        color: Colors.blue,
                        shape: StadiumBorder(),
                        child: Text(
                          'Book Now',
                          style: TextStyle(color: Colors.white),
                        ),
                        padding: EdgeInsets.only(left: 40, right: 40),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
