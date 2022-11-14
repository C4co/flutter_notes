import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DebugLines extends StatefulWidget {
  const DebugLines({super.key});

  @override
  State<DebugLines> createState() => _DebugLinesState();
}

class _DebugLinesState extends State<DebugLines> {
  bool _togglLines = false;

  @override
  Widget build(BuildContext context) {
    debugPaintSizeEnabled = _togglLines;

    return IconButton(
      onPressed: (){
        setState(() {
          _togglLines = !_togglLines;
        });
      },
      icon: const Icon(Icons.bug_report_outlined)
    );
  }
}
