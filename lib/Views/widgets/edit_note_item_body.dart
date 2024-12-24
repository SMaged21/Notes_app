import 'package:flutter/material.dart';
import 'package:notes_app/Views/widgets/custom_app_bar.dart';
import 'package:notes_app/Views/widgets/custom_textfield.dart';

class EditNoteItemBody extends StatelessWidget {
  const EditNoteItemBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(title: "Edit", iconData: Icons.check),
          SizedBox(
            height: 50,
          ),
          CustomTextfield(hintText: "Title"),
          SizedBox(
            height: 16,
          ),
          CustomTextfield(
            hintText: "Content",
            maxLines: 5,
          )
        ],
      ),
    );
  }
}
