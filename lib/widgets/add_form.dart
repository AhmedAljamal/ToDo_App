
import 'package:flutter/material.dart';
import 'package:todo_app/widgets/custom_button_widget.dart';
import 'package:todo_app/widgets/custom_text_field.dart';

class AddForm extends StatefulWidget {
  const AddForm({
    super.key,
  });

  @override
  State<AddForm> createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

   AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(
            onSaved: (value) {
              title = value;
              
            },
            text: 'Title',
          ),
          SizedBox(
            height: 30,
          ),
          CustomTextField(
            onSaved: (value) {
              subTitle = value;
              
            },
            text: 'Content',
            max: 5,
          ),
          SizedBox(
            height: 100,
          ),
      
          CustomButton(
            onTap: () {
              
              if (formKey.currentState!.validate()) 
              {
                formKey.currentState!.save();
                
              }else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {

                  
                });
                
              }
              
            },
          ),
        ],
      ),
    );
  }
}