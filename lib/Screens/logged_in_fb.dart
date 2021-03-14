import 'package:flutter/material.dart';
import 'package:login_screen/Modules/fb_signin_provider.dart';
import 'package:login_screen/Screens/homePage.dart';

class LoggedInFb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.blue[100], Colors.blue[600]],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Logged In',
              style: TextStyle(
                color: Colors.black,
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            CircleAvatar(
              maxRadius: 70,
              backgroundImage: NetworkImage(imageUrl),
            ),
            SizedBox(height: 15),
            Text(
              'Name: ' + name,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Email: ' + email,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                facebookLogin.logOut();
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) {
                  return HomePage();
                }), ModalRoute.withName('/'));
              },
              child: Text(
                'Logout',
                style: TextStyle(fontSize: 20.0),
              ),
              //style: ButtonStyle(side: MaterialStateProperty()),
            )
          ],
        ),
      ),
    );
  }
}
