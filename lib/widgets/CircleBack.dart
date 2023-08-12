import 'package:flutter/material.dart';

class CircleBack extends StatefulWidget {
  const CircleBack({super.key});

  @override
  State<CircleBack> createState() => _CircleBackState();
}

class _CircleBackState extends State<CircleBack> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF33691E),
      onPressed: () {
        Navigator.pop(context);
      },
      child: const Icon(
        Icons.arrow_back,
        color: Colors.white,
      ),
    );
  }
}
