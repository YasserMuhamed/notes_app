import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/bloc_observer.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox(kNotesBox);

  Bloc.observer = SimpleBlocObserver();
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Poppins",
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 69, 80, 94),
          brightness: Brightness.dark,
        ).copyWith(
          primaryContainer: Colors.grey.shade800,
          onPrimaryContainer: Colors.white,
          secondaryContainer: const Color(0xff03dac6),
          onSecondaryContainer: Colors.black,
          error: Colors.red,
          onError: Colors.black,
        ),
      ),
      home: const NotesView(),
    );
  }
}
