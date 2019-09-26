import 'package:firebase_login/auth.dart';
import 'package:firebase_login/login.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Home',
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              signOutGoogle();
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => Loginpage()));
            },
            color: Colors.black,
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.purpleAccent,
            gradient:
                LinearGradient(colors: [Colors.blue[200], Colors.lightBlue])),
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: NetworkImage(
                  imageUrl,
                ),
                radius: 60,
                backgroundColor: Colors.transparent,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                name,
                style: TextStyle(fontSize: 28),
              ),
              Text(email),
            ],
          ),
        )),
      ),
    );
  }
}
