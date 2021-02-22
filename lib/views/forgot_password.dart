import 'package:dating_app/components/custom_button.dart';
import 'package:dating_app/components/custom_textfeild.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 30),
            child: Column(
              children: [
                Text(
              "Forgot Password?",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Reset Your Password Here!",
              style: TextStyle(fontSize: 20, color: Colors.grey.shade400),
            ),
            Center(
                child: Image.asset(
              'assets/images/forgot_pass_img.png',
              width: 250,
              height: 250,
            )),
            CustomTextfeild(
              lbltxt: "Password",
              isObscure: true,
            ),
            SizedBox(
              height: 15,
            ),
            CustomButton(
              name: "Send an reset email",
              function: (){},
            ),
              ],
            ),
          ),
    );
  }
}