import 'package:flutter/material.dart';
import 'package:notes_app/Views/widgets/custom_button.dart';
import 'package:notes_app/Views/widgets/custom_textfield.dart';

class NoteModelBottomSheet extends StatelessWidget {
  const NoteModelBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> formKey = GlobalKey();
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextfield(
            onSaved: (value) {
              title = value;
            },
            hintText: "Title",
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextfield(
            onSaved: (value) {
              content = value;
            },
            hintText: "Content",
            maxLines: 5,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomButton(
            onTap: () {
              if (formKey.currentState != null &&
                  formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(
            height: 16,
          )
        ],
      ),
    );
  }
}
