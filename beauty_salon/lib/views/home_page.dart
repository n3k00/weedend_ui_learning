import 'package:beauty_salon/views/booking_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:icon_decoration/icon_decoration.dart';

class HomePage extends StatelessWidget {
  final tabBarIcons = [
    FontAwesomeIcons.house,
    FontAwesomeIcons.magnifyingGlass,
    FontAwesomeIcons.user,
    FontAwesomeIcons.heart,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Welcome back, Helen!",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        iconSize: 28,
                        onPressed: () {},
                        icon: Icon(Icons.notifications_outlined),
                      ),
                      IconButton(
                        iconSize: 28,
                        onPressed: () {},
                        icon: Icon(Icons.bookmark_outline),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        "Beauty Salons",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.filter_list,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      children: [
                        GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                                isScrollControlled: true,
                                context: context,
                                builder: (context) {
                                  return BookingPage();
                                });
                          },
                          child: Container(
                            height: 260,
                            width: MediaQuery.of(context).size.width,
                            child: Card(
                              color: Color(0xFF679286),
                              semanticContainer: true,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    child: Image.network(
                                      "https://cdn1.treatwell.net/images/view/v2.i5059481.w720.h480.x57F4036F/",
                                      height: 200,
                                      width: MediaQuery.of(context).size.width,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 24),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Beauty Group",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Text(
                                          " * ",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Text(
                                          "10:00-23:00",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Spacer(),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.favorite_border,
                                              color: Colors.deepOrangeAccent,
                                            )),
                                        Text(
                                          "1.1k",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 12),
                        Container(
                          height: 260,
                          width: MediaQuery.of(context).size.width,
                          child: Card(
                            color: Color(0xFF679286),
                            semanticContainer: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.network(
                                    "https://images.squarespace-cdn.com/content/v1/587fcd183e00be6f0d1efc30/1558464418002-PRT8LF3DAIZBW45IG9Z5/salon-image-2.JPG?format=2500w",
                                    height: 200,
                                    width: MediaQuery.of(context).size.width,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 24),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Modern Studio",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Text(
                                        " * ",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Text(
                                        "08:00-22:00",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Spacer(),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.favorite_border,
                                            color: Colors.deepOrangeAccent,
                                          )),
                                      Text(
                                        "1.5k",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 12),
                        Container(
                          height: 260,
                          width: MediaQuery.of(context).size.width,
                          child: Card(
                            color: Color(0xFF679286),
                            semanticContainer: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.network(
                                    "https://images.squarespace-cdn.com/content/v1/587fcd183e00be6f0d1efc30/1558464418002-PRT8LF3DAIZBW45IG9Z5/salon-image-2.JPG?format=2500w",
                                    height: 200,
                                    width: MediaQuery.of(context).size.width,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 24),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Modern Studio",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Text(
                                        " * ",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Text(
                                        "08:00-22:00",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Spacer(),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.favorite_border,
                                            color: Colors.deepOrangeAccent,
                                          )),
                                      Text(
                                        "1.5k",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              left: 20,
              right: 20,
              bottom: 20,
              child: Container(
                alignment: Alignment.center,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Color(0xFF679286),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ...tabBarIcons.map(
                      (icon) {
                        return IconButton(
                          onPressed: () {},
                          icon: Icon(
                            icon,
                            color: Colors.white60,
                            size: 22,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
