import 'package:flutter/material.dart';

class ColumnPage extends StatelessWidget {
  const ColumnPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text('Column Layout')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.blue.shade100,
              width: MediaQuery.of(context).size.width,
              height: (MediaQuery.of(context).size.height / 3),
              child: const Center(child: Text('Column 1')),
            ),

            Container(
              color: Colors.blue.shade200,
              width: MediaQuery.of(context).size.width,
              height: (MediaQuery.of(context).size.height / 3),
              child: const Center(child: Text('Column 2')),
            ),

            Container(
              color: Colors.blue.shade300,
              width: MediaQuery.of(context).size.width,
              height: (MediaQuery.of(context).size.height / 3),
              child: const Center(child: Text('Column 3')),
            )
          ],
        ),
      ),
    );
  }
}
