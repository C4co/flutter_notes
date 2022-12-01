
import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stack Layout')),
      body: Center(
        child: Stack(
          alignment: const Alignment(0, 0),
          children: [
            Container(
              width: 300,
              height: 300,
              color: Colors.blue.shade500,
            ),

            Container(
              width: 200,
              height: 200,
              color: Colors.blue.shade300,
            ),

            Container(
              width: 100,
              height: 100,
              color: Colors.blue.shade100,
            ),
          ],
        ),
      ),
    );
  }
}
