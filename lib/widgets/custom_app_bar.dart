import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key, required this.text, required this.icon,
  });
  final String text;
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,
    style: TextStyle(
      color: Colors.white,
      fontSize: 25,
    ),
    ),
        Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(0.05),
      ),
      child:  Center(
        child: Icon(icon,
        size: 25,
        ),
      ),
    ),
      ],
    );
  }
}