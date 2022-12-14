import 'package:flutter/material.dart';
import 'package:photo_sharing_clone_app/account_check/account_check.dart';
import 'package:photo_sharing_clone_app/log_in/login_screen.dart';
import 'package:photo_sharing_clone_app/widgets/button_square.dart';
import 'package:photo_sharing_clone_app/widgets/input_field.dart';

class Credentials extends StatelessWidget {
  final TextEditingController _emailTextController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(50.0,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Center(
              child: Image.asset(
                "images/forget.png",
                width: 300.0,
              ),
            ),
          ),
          const SizedBox(height: 10.0,),
          InputField(
            hintText: "Enter Email",
            icon: Icons.email_rounded,
            obscureBox: false,
            textEditingController: _emailTextController,
          ),
          const SizedBox(height: 15.0,),
          ButtonSquare(
            text: "Send Link",
            color1: Colors.red,
            color2: Colors.redAccent,
            press: () async
            {

            },

          ),
          AccountCheck(
            login: false,
            press: ()
            {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => LoginScreen()));
            },
          ),
        ],
      ),
    );
  }
}
