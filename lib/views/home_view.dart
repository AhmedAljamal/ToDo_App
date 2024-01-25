import 'package:flutter/material.dart';
import 'package:todo_app/widgets/custom_app_bar.dart';
import 'package:todo_app/widgets/custom_icon_search.dart';
import 'package:todo_app/widgets/custom_text_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: CustomAppBar(),
          )
        ],
      ),
    );
  }
}


