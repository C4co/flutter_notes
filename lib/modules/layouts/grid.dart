import 'package:flutter/material.dart';

class GridPage extends StatelessWidget {
  const GridPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Grid Layout')),
      body: GridView.extent(
        maxCrossAxisExtent:  300,
        padding: const EdgeInsets.all(1),
        mainAxisSpacing: 1,
        crossAxisSpacing: 1,
        children: [
          Container(
            color: Colors.blue.shade50,
            child: const Center(child: Text('Item')),
          ),
          Container(
            color: Colors.blue.shade100,
            child: const Center(child: Text('Item')),
          ),
          Container(
            color: Colors.blue.shade200,
            child: const Center(child: Text('Item')),
          ),
          Container(
            color: Colors.blue.shade300,
            child: const Center(child: Text('Item')),
          ),
          Container(
            color: Colors.blue.shade400,
            child: const Center(child: Text('Item')),
          ),
          Container(
            color: Colors.blue.shade500,
            child: const Center(child: Text('Item')),
          ),
          Container(
            color: Colors.blue.shade600,
            child: const Center(child: Text('Item')),
          ),
          Container(
            color: Colors.blue.shade700,
            child: const Center(child: Text('Item')),
          ),
          Container(
            color: Colors.blue.shade800,
            child: const Center(child: Text('Item')),
          ),
          Container(
            color: Colors.blue.shade900,
            child: const Center(child: Text('Item')),
          ),
        ],
      ),
    );
  }
}