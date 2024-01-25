import 'package:flutter/material.dart';
import 'package:todo_app/widgets/custom_notes_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context , index) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: NoteItem(),
      );
    });
  }
}