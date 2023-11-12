import 'package:flutter/material.dart';

class ProfileOne extends StatelessWidget {
  const ProfileOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "View Profile",
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0,
        backgroundColor: Colors.red,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.red,
                  Colors.deepOrange.shade300,
                ],
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.red.shade600,
                      minRadius: 30,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.call,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                    CircleAvatar(
                      minRadius: 60,
                      backgroundColor: Colors.deepOrange.shade600,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://profileme.app/wp-content/uploads/2021/01/cropped-ProfileMe-06.jpg"),
                        minRadius: 50,
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.red.shade600,
                      minRadius: 30,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.message,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  "Wai Moe Aung",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Shan State,Myanmar",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.red.shade700,
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.deepOrange.shade300,
                  child: ListTile(
                    title: Text(
                      "50895",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "Follower",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.red,
                  child: ListTile(
                    title: Text(
                      "34524",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "Follower",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
          ListTile(
            title: Text(
              "Email",
              style: TextStyle(fontSize: 12, color: Colors.deepOrange),
            ),
            subtitle: Text(
              "waimoeaung@mail.com",
              style: TextStyle(fontSize: 18),
            ),
          ),
          Divider(),
          ListTile(
            title: Text(
              "Phone",
              style: TextStyle(fontSize: 12, color: Colors.deepOrange),
            ),
            subtitle: Text(
              "+9597523456",
              style: TextStyle(fontSize: 18),
            ),
          ),
          Divider(),
          ListTile(
            title: Text(
              "Twitter",
              style: TextStyle(fontSize: 12, color: Colors.deepOrange),
            ),
            subtitle: Text(
              "@waimoe",
              style: TextStyle(fontSize: 18),
            ),
          ),
          Divider(),
          ListTile(
            title: Text(
              "Facebook",
              style: TextStyle(fontSize: 12, color: Colors.deepOrange),
            ),
            subtitle: Text(
              "facebook.com/waimoe",
              style: TextStyle(fontSize: 18),
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
