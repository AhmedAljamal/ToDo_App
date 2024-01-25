import 'package:flutter/material.dart';
import 'package:todo_app/widgets/custom_app_bar.dart';
import 'package:todo_app/widgets/custom_icon_search.dart';
import 'package:todo_app/widgets/custom_notes_item.dart';
import 'package:todo_app/widgets/custom_notes_list_view.dart';
import 'package:todo_app/widgets/custom_text_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CustomAppBar(),
            SizedBox(
              height: 10,
            ),
            Expanded(child: NotesListView()),


          ],
        ),
      ),
    );
  }
}

