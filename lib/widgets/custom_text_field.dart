import 'package:flutter/material.dart';
import 'package:todo_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.text,  this.max = 1});

  final String text;
  final int max;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: buildInput(),
      maxLines: max,
    );
  }

  InputDecoration buildInput() {
    return InputDecoration(
      labelText: text,
      labelStyle: TextStyle(
        color: kPrimaryColor,
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Colors.white),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: kPrimaryColor),
      ),
    );
  }
}
