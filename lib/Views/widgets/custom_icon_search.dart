import 'package:flutter/material.dart';

class CustomSeaarchIcon extends StatelessWidget {
  const CustomSeaarchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 46,
      height: 46,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white.withOpacity(.1)),
      child: Icon(Icons.search, size: 28),
    );
  }
}
