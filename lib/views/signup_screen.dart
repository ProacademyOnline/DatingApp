import 'package:dating_app/components/custom_button.dart';
import 'package:dating_app/components/custom_textfeild.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 30),
            child: SingleChildScrollView(
                          child: Column(
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
                'assets/images/signup_img.png',
                width: 250,
                height: 250,
              )),
              CustomTextfeild(
                lbltxt: "Full Name",
                isObscure: false,
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextfeild(
                lbltxt: "Email",
                isObscure: false,
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextfeild(
                lbltxt: "Password",
                isObscure: true,
              ),
              SizedBox(
                height: 15,
              ),
              CustomButton(
                name: "Signup",
                function: (){},
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "I'm already a member ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).pop();
                      },
                                        child: Text(
                        "Signin",
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