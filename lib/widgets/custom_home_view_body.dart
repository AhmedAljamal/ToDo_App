import 'package:flutter/material.dart';
import 'package:todo_app/widgets/custom_app_bar.dart';
import 'package:todo_app/widgets/custom_notes_list_view.dart';

class CustomHomeViewBody extends StatelessWidget {
  const CustomHomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            text: 'Notes',
            icon: Icons.add,
          ),
          
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}