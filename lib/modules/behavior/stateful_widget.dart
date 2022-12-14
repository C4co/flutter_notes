 import 'package:flutter/material.dart';

class SfWidget extends StatefulWidget {
  const SfWidget({super.key});

  @override
  State<SfWidget> createState() => _SfWidgetState();
}

class _SfWidgetState extends State<SfWidget> {
  int _counter = 0;

  void _incrementCounter(){
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter(){
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stateful Widget')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter: $_counter', style: const TextStyle(fontSize: 30)),

            const SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  key: const Key('increment-button'),
                  onPressed: (){
                    _incrementCounter();
                  },
                  child: const Text('Increment')
                ),

                const SizedBox(width: 10),

                ElevatedButton(
                  key: const Key('decrement-button'),
                  onPressed: (){
                    _decrementCounter();
                  },
                  child: const Text('Decrement')
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}