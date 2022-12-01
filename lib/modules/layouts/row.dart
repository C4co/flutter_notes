import 'package:flutter/material.dart';

class RowPage extends StatelessWidget {
  const RowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Row Layout')),
      body: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 3,
            color: Colors.blue.shade100,
            child: const Center(
              child: Text('Row 1', style: TextStyle( color: Colors.black))
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 3,
            color: Colors.blue.shade200,
            child: const Center(
              child: Text('Row 2', style: TextStyle( color: Colors.black))
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 3,
            color: Colors.blue.shade300,
            child: const Center(
              child: Text('Row 3', style: TextStyle( color: Colors.black))
            ),
          )
        ],
      ),
    );
  }
}
