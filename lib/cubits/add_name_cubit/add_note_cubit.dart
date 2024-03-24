import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  Color color = const Color(0xff04151F);
  addNote(NoteModel note) async {
    note.color = color.value;
    //set loading state
    emit(AddNoteLoading());

    try {
      var notesModel = Hive.box<NoteModel>(kNotesBox);

      await notesModel.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(errMsg: e.toString()));
    }
  }
}
