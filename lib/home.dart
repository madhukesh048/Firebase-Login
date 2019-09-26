import 'package:firebase_login/signInButtonWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
            color: Colors.purpleAccent,
            gradient: LinearGradient(colors: [Colors.blue, Colors.red])),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset(
                'assets/icons/firebase.svg',
                height: 180,
                width: 180,
              ),
              SizedBox(
                height: 100,
              ),
              SignInButton(
                title: 'Sign in with Google',
                assetName: 'assets/icons/search.svg',
                onTap: () {},
              ),
              SizedBox(
                height: 30,
              ),
              SignInButton(
                title: "Sign in with Facebook",
                assetName: 'assets/icons/facebook.svg',
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
