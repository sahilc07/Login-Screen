import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_screen/Modules/google_signin_provide.dart';
import 'package:login_screen/Screens/logged_in_google.dart';

class GoogleSignupButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        padding: EdgeInsets.all(4),
        child: OutlinedButton.icon(
          label: Text(
            'Sign In With Google',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          style: ButtonStyle(
            padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            ),
            elevation: MaterialStateProperty.all(5.0),
            shape: MaterialStateProperty.all(
              StadiumBorder(),
            ),
          ),
          icon: FaIcon(FontAwesomeIcons.google, color: Colors.red),
          onPressed: () {
            signInWithGoogle().then((result) {
              if (result != null) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return LoggedInGoogle();
                    },
                  ),
                );
              }
            });
          },
        ),
      );
}
