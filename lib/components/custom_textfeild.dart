import 'package:flutter/material.dart';

class CustomTextfeild extends StatelessWidget {

final String lbltxt;
final bool isObscure;

CustomTextfeild({this.lbltxt, this.isObscure});

  @override
  Widget build(BuildContext context) {
    return TextField(
                obscureText: isObscure,
                decoration: InputDecoration(
                  labelText: lbltxt,
                  labelStyle:
                      TextStyle(fontSize: 15, color: Colors.grey.shade400),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.red)),
                ));
  }
}