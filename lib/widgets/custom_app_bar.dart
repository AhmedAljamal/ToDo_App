import 'package:flutter/material.dart';
import 'package:todo_app/widgets/custom_icon_search.dart';
import 'package:todo_app/widgets/custom_text_widget.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomTextWidget(),
        CustomIconSearch(),
      ],
    );
  }
}