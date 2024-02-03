import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:todo_app/Models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());


  AddNote(NoteModel note)
  {
    
  }
}
