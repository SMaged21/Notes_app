import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app/Views/widgets/custom_icon_search.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.title, required this.iconData, this.onTap});
  final String title;
  final IconData iconData;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 28),
        ),
        const Spacer(),
        GestureDetector(
          onTap: onTap,
          child: CustomSeaarchIcon(
            icon: iconData,
          ),
        ),
      ],
    );
  }
}
