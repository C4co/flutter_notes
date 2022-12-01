import 'package:flutter/material.dart';

class MyContent extends StatefulWidget {
  const MyContent({super.key});

  @override
  State<MyContent> createState() => _MyContentState();
}

class _MyContentState extends State<MyContent> {
  String _block = 'none';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if(_block == 'blue') Container(
          color: Colors.blue,
          height: 250,
          child: const Center(
            child: Text('Blue block', style: TextStyle(color: Colors.white)),
          ),
        ),

        if(_block == 'red') Container(
          color: Colors.red,
          height: 250,
          child: const Center(
            child: Text('Red block', style: TextStyle(color: Colors.white)),
          ),
        ),

        const SizedBox(height: 20),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                setState(() {
                  _block = 'red';
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red
              ),
              child: const Text('Red block')
            ),

            const SizedBox(width: 20),

            ElevatedButton(
              onPressed: (){
                setState(() {
                  _block = 'blue';
                });
              },
              child: const Text('Blue block')
            ),
          ],
        )
      ],
    );
  }
}

class ConditionalRenderingPage extends StatelessWidget {
  const ConditionalRenderingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Conditional Rendering')),
      body: const Center(
        child: MyContent(),
      ),
    );
  }
}
