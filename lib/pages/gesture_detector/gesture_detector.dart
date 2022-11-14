import 'package:flutter/material.dart';

class GestureDetectorPage extends StatelessWidget {
  const GestureDetectorPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text('Gesture Detector')),
      body: Column(
        children: [
          GestureDetector(
            onTap: (){
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                duration: Duration(seconds: 1),
                content: Text('Tap gesture')
              ));
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 140,
              color: Colors.blue.shade200,
              child: const Center(child: Text('Tap', style: TextStyle(fontSize: 25))),
            ),
          ),

          GestureDetector(
            onDoubleTap: (){
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                duration: Duration(seconds: 1),
                content: Text('Double Tap')
              ));
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 140,
              color: Colors.blue.shade300,
              child: const Center(child: Text('Double Tap', style: TextStyle(fontSize: 25))),
            ),
          ),

          GestureDetector(
            onLongPress: (){
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                duration: Duration(seconds: 1),
                content: Text('Long press')
              ));
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 140,
              color: Colors.blue.shade400,
              child: const Center(child: Text('Long press', style: TextStyle(fontSize: 25))),
            ),
          ),

        ],
      )
    );
  }
}