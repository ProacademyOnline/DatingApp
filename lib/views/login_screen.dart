import 'package:dating_app/components/custom_button.dart';
import 'package:dating_app/components/custom_textfeild.dart';
import 'package:dating_app/views/forgot_password.dart';
import 'package:dating_app/views/signup_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 15, right: 15, top: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Sign in to continue!",
                style: TextStyle(fontSize: 20, color: Colors.grey.shade400),
              ),
              Center(
                  child: Image.asset(
                'assets/images/login_img.png',
                width: 250,
                height: 250,
              )),
              CustomTextfeild(
                lbltxt: "Email ID",
                isObscure: false,
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextfeild(
                lbltxt: "Password",
                isObscure: true,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ForgotPassword()));
                },
                child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      "Forgot password",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    )),
              ),
              SizedBox(
                height: 30,
              ),
              CustomButton(
                name: "Login",
                function: () {},
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "I'm a new user ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignupScreen()));
                    },
                    child: Text(
                      "Signup",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
