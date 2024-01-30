import 'package:flutter/material.dart';
import 'package:todo_app/widgets/custom_app_bar.dart';
import 'package:todo_app/widgets/custom_floationg_action_button.dart';
import 'package:todo_app/widgets/custom_home_view_body.dart';
import 'package:todo_app/widgets/custom_notes_item.dart';
import 'package:todo_app/widgets/custom_notes_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CustomFloatingActionButton(),
      body: CustomHomeViewBody(),
    );
  }
}




