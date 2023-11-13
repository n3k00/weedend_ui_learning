import 'package:beauty_salon/views/home_page.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFefbd9c),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 60),
              CircleAvatar(
                radius: 150,
                backgroundImage: NetworkImage(
                    "https://hairmotive.com/wp-content/uploads/2016/09/Crown-Braid-and-Low-Ponytail.jpg"),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 25,
                    child: CircleAvatar(
                      radius: 22,
                      backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbdujFVnRAblxBgx15v7VLTzWUx5VYRV0riw&usqp=CAU"),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 25,
                    child: CircleAvatar(
                      radius: 22,
                      backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbdujFVnRAblxBgx15v7VLTzWUx5VYRV0riw&usqp=CAU"),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 25,
                    child: CircleAvatar(
                      radius: 22,
                      backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbdujFVnRAblxBgx15v7VLTzWUx5VYRV0riw&usqp=CAU"),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 25,
                    child: CircleAvatar(
                      radius: 22,
                      backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbdujFVnRAblxBgx15v7VLTzWUx5VYRV0riw&usqp=CAU"),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Text(
                "Find desirable service for new appearance",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Beauty salon with different kind of services,affordable prices,acceptable location and the highest quality.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Spacer(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF679286),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HomePage();
                  }));
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    "Let's start",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
