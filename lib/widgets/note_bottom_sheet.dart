import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_name_cubit/add_note_cubit.dart';
import 'package:notes_app/widgets/add_note_form.dart';

class NoteBottomSheet extends StatelessWidget {
  const NoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    // provide AddNoteCubit after refactoring it from materialApp.
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      // Integrate the cubit to make this part know the states and listen to changes
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {
            print("Failure ${state.errMsg}");
          }

          if (state is AddNoteSuccess) {
            return Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child: const FormSheetCard(),
          );
        },
      ),
    );
  }
}
