import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Text('Notes',
    style: TextStyle(
      color: Colors.white,
      fontSize: 25,
    ),
    );
  }
}