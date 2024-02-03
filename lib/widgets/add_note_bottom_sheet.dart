import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/constants.dart';
import 'package:todo_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:todo_app/widgets/add_form.dart';
import 'package:todo_app/widgets/custom_button_widget.dart';
import 'package:todo_app/widgets/custom_text_field.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddNoteCubit, AddNoteState>(
      listener: (context, state) {
        if (state is AddNoteFauiler) {
          print('failed ${state.errMessage}');
        }

        if (state is AddNoteSuccess) {
          Navigator.pop(context);
        }
      },
      builder: (context, state) {
        return AbsorbPointer(
          absorbing: state is AddNoteLoading ? true : false,
          child:  Padding(
            padding: EdgeInsets.only(top: 16 ,left: 16 ,right: 16 , bottom: MediaQuery.of(context).viewInsets.bottom),
            child:const SingleChildScrollView(
              child: AddForm(),
            ),
          ),
        );
      },
    );
  }
}
