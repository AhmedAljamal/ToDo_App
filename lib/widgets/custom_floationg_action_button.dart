import 'package:flutter/material.dart';
import 'package:todo_app/widgets/add_note_bottom_sheet.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.purple,
      onPressed: () {
        showModalBottomSheet(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16)
          ),
          context: context, 
          builder: (context) 
          {
          return AddNoteBottomSheet();
        },);
      },
      child: Icon(
        Icons.add,
      ),
    );
  }
}

