import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class BookingPage extends StatelessWidget {
  List services = [
    "Hair curling",
    "Hair straighting",
    "Hair cutting",
    "Hair highlighting",
    "Manicure",
    "Pedicure",
    "Makeup",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Text(
                  "Filter",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
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
                    Icons.close,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            ExpansionTile(
              initiallyExpanded: true,
              backgroundColor: Color(0xFFf7faf9),
              shape: Border(),
              title: Text(
                "Services",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              children: [
                Wrap(
                  children: services.map((e) {
                    return Container(
                      margin: EdgeInsets.only(right: 10, bottom: 10),
                      child: Chip(
                        deleteIcon: Icon(
                          Icons.close,
                        ),
                        onDeleted: () {},
                        label: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Text(e),
                        ),
                        side: BorderSide(
                          color: Colors.grey,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    );
                  }).toList(),
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  "Discounts",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Spacer(),
                Transform.scale(
                  scale: 1.5,
                  child: Checkbox(
                    value: true,
                    onChanged: (value) {},
                    checkColor: Colors.white,
                    activeColor: Color(0xFF679286),
                    side: BorderSide(
                      color: Color(0xFF679286),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
              ],
            ),
            Divider(),
            Row(
              children: [
                Text(
                  "Certificated",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Spacer(),
                Transform.scale(
                  scale: 1.5,
                  child: Checkbox(
                    value: false,
                    onChanged: (value) {},
                    checkColor: Colors.white,
                    activeColor: Color(0xFF679286),
                    side: BorderSide(
                      color: Color(0xFF679286),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                  ),
                ),
              ],
            ),
            Divider(),
            Row(
              children: [
                Text(
                  "Price Range",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Spacer(),
                Chip(
                  avatar: CircleAvatar(
                    backgroundColor: Color(0xFF679286),
                    child: Text(
                      "min",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ),
                  side: BorderSide(color: Colors.grey),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  label: Text("\$ 0.00"),
                ),
                SizedBox(width: 20),
                Chip(
                  avatar: CircleAvatar(
                    backgroundColor: Color(0xFF679286),
                    child: Text(
                      "max",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ),
                  side: BorderSide(color: Colors.grey),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  label: Text("\$ 130.0"),
                ),
              ],
            ),
            Divider(),
            Row(
              children: [
                Text(
                  "Price Range",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Spacer(),
                RatingBar.builder(
                  initialRating: 4,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 25,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Color(0xFF679286),
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ],
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF679286),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "See Results",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            Text(
              "* Only one service price",
              style: TextStyle(
                color: Colors.red,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "** Depends on overall number of client with a year",
              style: TextStyle(
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
