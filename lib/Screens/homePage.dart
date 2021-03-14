import 'package:flutter/material.dart';
import 'package:login_screen/Modules/background.dart';
import 'package:login_screen/Modules/fb_signin_button.dart';
import 'package:login_screen/Modules/google_signin_button.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          CustomPaint(
            painter: BackgroundPainter(),
          ),
          Column(
            children: [
              Spacer(),
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  width: 300,
                  child: Text(
                    "Sign In with Google or Facebook",
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Spacer(),
              SizedBox(
                height: 30.0,
              ),
              GoogleSignupButtonWidget(),
              SizedBox(
                height: 30.0,
              ),
              FacebookSignupButtonWidget(),
              Spacer(),
            ],
          )
        ],
      ),
    );
  }
}
