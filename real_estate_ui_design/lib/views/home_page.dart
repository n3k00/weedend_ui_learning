import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  final List tabItems = [
    "Real Estate",
    "Apartment",
    "House",
    "Motel",
    "Test 1",
    "Test 2"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 15),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                borderSide:
                                    BorderSide(color: Colors.grey.shade400),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1.5),
                              ),
                              prefixIcon: Icon(
                                FontAwesomeIcons.magnifyingGlass,
                                color: Colors.grey,
                              ),
                              hintText: "Search",
                              hintStyle: TextStyle(color: Colors.grey)),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.grey.shade400)),
                        child: Icon(
                          FontAwesomeIcons.sliders,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                DefaultTabController(
                  length: tabItems.length,
                  child: TabBar(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      labelPadding: EdgeInsets.symmetric(horizontal: 5),
                      isScrollable: true,
                      indicatorColor: Colors.transparent,
                      tabs: tabItems
                          .asMap()
                          .map((index, item) {
                            return MapEntry(
                                index,
                                Stack(
                                  children: [
                                    Tab(
                                      child: Chip(
                                        backgroundColor: 0 == index
                                            ? Colors.black
                                            : Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        label: Text(
                                          item,
                                          style: TextStyle(
                                            color: 0 == index
                                                ? Colors.white
                                                : Colors.grey,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ));
                          })
                          .values
                          .toList()),
                ),
                SizedBox(height: 10),
                Container(
                  height: 330,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(
                        width: 280,
                        height: 310,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 280,
                              height: 250,
                              child: Image.network(
                                "https://img-v2.gtsstatic.net/reno/imagereader.aspx?imageurl=https%3A%2F%2Fsir.azureedge.net%2F1103i215%2Ffc3eghzg3b45416ykpvf6mtg94i215&option=N&h=472&permitphotoenlargement=false",
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "\$ 440,000",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            ),
                            Text(
                              "123 Main St, Tulsa, OK 74136",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                      SizedBox(
                        width: 280,
                        height: 310,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 280,
                              height: 250,
                              child: Image.network(
                                "https://img-v2.gtsstatic.net/reno/imagereader.aspx?imageurl=https%3A%2F%2Fsir.azureedge.net%2F1103i215%2Ffc3eghzg3b45416ykpvf6mtg94i215&option=N&h=472&permitphotoenlargement=false",
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "\$ 440,000",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            ),
                            Text(
                              "123 Main St, Tulsa, OK 74136",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                      SizedBox(
                        width: 280,
                        height: 310,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 280,
                              height: 250,
                              child: Image.network(
                                "https://img-v2.gtsstatic.net/reno/imagereader.aspx?imageurl=https%3A%2F%2Fsir.azureedge.net%2F1103i215%2Ffc3eghzg3b45416ykpvf6mtg94i215&option=N&h=472&permitphotoenlargement=false",
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "\$ 440,000",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            ),
                            Text(
                              "123 Main St, Tulsa, OK 74136",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: GridView.count(
                    primary: false,
                    childAspectRatio: (4 / 3),
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://media.licdn.com/dms/image/D5612AQHvpYxvx811MQ/article-cover_image-shrink_600_2000/0/1693852093709?e=2147483647&v=beta&t=g82ejXOf9w6GiwxFQ9GGzqsy_4lTfSHJ8hCsHA0eNGo"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Center(
                            child: Text(
                          "New Listing",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        )),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://media.licdn.com/dms/image/D5612AQHvpYxvx811MQ/article-cover_image-shrink_600_2000/0/1693852093709?e=2147483647&v=beta&t=g82ejXOf9w6GiwxFQ9GGzqsy_4lTfSHJ8hCsHA0eNGo"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Center(
                            child: Text(
                          "New Project",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        )),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://media.licdn.com/dms/image/D5612AQHvpYxvx811MQ/article-cover_image-shrink_600_2000/0/1693852093709?e=2147483647&v=beta&t=g82ejXOf9w6GiwxFQ9GGzqsy_4lTfSHJ8hCsHA0eNGo"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Center(
                            child: Text(
                          "Open House",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        )),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://media.licdn.com/dms/image/D5612AQHvpYxvx811MQ/article-cover_image-shrink_600_2000/0/1693852093709?e=2147483647&v=beta&t=g82ejXOf9w6GiwxFQ9GGzqsy_4lTfSHJ8hCsHA0eNGo"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Center(
                            child: Text(
                          "Price Reduce",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        )),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black87,
        items: [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.house),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.envelope),
            label: "Inbox",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.clipboardList),
            label: "Activity",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
