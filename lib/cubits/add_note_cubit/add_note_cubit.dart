import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:todo_app/Models/note_model.dart';
import 'package:todo_app/constants.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());


  AddNote(NoteModel note) async
  {
    emit(AddNoteLoading());
   try {
  var notesBox =  Hive.box(kHiveBox);
  await notesBox.add(note);
  emit(AddNoteSuccess());
}  catch (e) {

  AddNoteFauiler('There was an error ${e.toString()}');
  
}
  }
}
