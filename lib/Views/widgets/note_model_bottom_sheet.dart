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
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            CustomTextfield(
              hintText: "Title",
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextfield(
              hintText: "Content",
              maxLines: 5,
            ),
            SizedBox(
              height: 16,
            ),
            CustomButton(),
            SizedBox(
              height: 16,
            )
          ],
        ),
      ),
    );
  }
}
