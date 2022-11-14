import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  const TextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Text Widget')),
      body: ListView(
        padding: const EdgeInsets.all(15),
        itemExtent: 40,
        children: const [
          Text(
            'Text size',
            style: TextStyle(
              fontSize: 20
            )
          ),

          Text(
            'Text weight',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w900
            )
          ),

          Text('Text Italic',
            style: TextStyle(
              fontSize: 20,
              fontStyle: FontStyle.italic
            )
          ),

          Text(
            'Text decoration',
            style: TextStyle(
              fontSize: 20,
              decoration: TextDecoration.underline,
              decorationColor: Colors.red,
              decorationStyle: TextDecorationStyle.wavy
            )
          ),

          Text(
            'Text color',
            style: TextStyle(
              fontSize: 20,
              color: Colors.red
            )
          )
        ],
      ),
    );
  }
}
