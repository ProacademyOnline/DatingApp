import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String name;
  Function function;

  CustomButton({this.name, this.function});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.red, borderRadius: BorderRadius.circular(5)),
      child: FlatButton(
          onPressed: function,
          child: Text(
            name,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          )),
    );
  }
}
