import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_login/auth.dart';
import 'package:firebase_login/home.dart';
import 'package:firebase_login/signInButtonWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Loginpage extends StatefulWidget {
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
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
                onTap: () {
                  print('Sign in with google Button');
                  signInWithGoogle().whenComplete(() async{
                    print('${FirebaseAuth.instance.currentUser()}');
                    FirebaseUser user = await FirebaseAuth.instance.currentUser();
                    if (user != null)
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                  });
                },
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
