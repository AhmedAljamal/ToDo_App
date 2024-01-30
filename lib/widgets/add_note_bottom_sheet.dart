import 'package:flutter/material.dart';
import 'package:todo_app/constants.dart';
import 'package:todo_app/widgets/custom_button_widget.dart';
import 'package:todo_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Container(
        height: 450,
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextField(
                text: 'Title',
              ),
              SizedBox(
                height: 30,
              ),
              CustomTextField(
                text: 'Content',
                max: 5,
              ),
              SizedBox(
                height: 30,
              ),
          
              CustomButton(),
            ],
          ),
        ),
      ),
    );
  }
}

