import 'package:flutter/material.dart';

class CircularProgress extends StatefulWidget {
  const CircularProgress({
    Key? key,
  }) : super(key: key);

  @override
  State<CircularProgress> createState() => _CircularProgressState();
}

class _CircularProgressState extends State<CircularProgress> {
  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator(
        color: Colors.green,
        backgroundColor: Colors.greenAccent,
        strokeWidth: 6);
  }
}
