import 'package:flutter/material.dart';
import 'package:todo_app/constants.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({super.key, required this.text,  this.max = 1, this.onSaved});

  final String text;
  final int max;

  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
     
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'field is required';

        }else{
          return null;
        }
      },
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
