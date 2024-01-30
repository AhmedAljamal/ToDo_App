import 'package:flutter/material.dart';
import 'package:todo_app/widgets/custom_app_bar.dart';
import 'package:todo_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CustomAppBar(
              text: 'Edit Note',
              icon: Icons.check,
            ),
            SizedBox(
              height: 40,
            ),

             CustomTextField(
              text: 'Title',
            ),
            SizedBox(
              height: 30,
            ),
            CustomTextField(
              text: 'Content',
              max: 6,
            ),
          ],
        ),
      ),
    );
  }
}