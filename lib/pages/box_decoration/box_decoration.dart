import 'package:flutter/material.dart';

class BoxDecorationPage extends StatelessWidget {
  const BoxDecorationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Box Decoration')),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue.shade500, Colors.blue.shade100]
              ),
              border: Border.all(
                color: Colors.blue.shade900,
                width: 5
              ),
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.blue,
                  offset: Offset(20, 20)
                )
              ]
            )
          ),
        ),
      ),
    );
  }
}
