import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/models/note_model.dart';

import 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState>{
  AddNoteCubit():super(AddNoteInitial());
Color color=Colors.white;
addNote(NoteModel note)async{
  note.color=color.value;
emit(AddNoteLoading());
try{
  var notesBox=Hive.box<NoteModel>(kNotesBox);
  
  await notesBox.add(note);
   emit(AddNoteSuccess());
 
}catch(e){
 emit(AddNoteFailure(e.toString()));
}
}}