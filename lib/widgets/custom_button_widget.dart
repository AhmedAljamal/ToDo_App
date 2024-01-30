import 'package:flutter/material.dart';
import 'package:todo_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: null,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kPrimaryColor,
        ),
        child: Center(child: Text('Add',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        ),),
      ),
    );
  }
}