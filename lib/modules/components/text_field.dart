import 'package:flutter/material.dart';

class _Input extends StatefulWidget {
  const _Input();

  @override
  State<_Input> createState() => _InputState();
}

class _InputState extends State<_Input> {
  String _name = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          onSubmitted: (value){
            setState(() {
              _name = value;
            });
          },
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Your name'
          ),
        ),
        const SizedBox(height: 20),
        Text('Hello: $_name')
      ],
    );
  }
}

class TextFieldPage extends StatelessWidget {
  const TextFieldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Text Field')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Padding(
              padding: EdgeInsets.all(15),
              child: _Input()
            ),
          ],
        ),
      ),
    );
  }
}
