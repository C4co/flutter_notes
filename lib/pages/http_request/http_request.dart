import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class MyContent extends StatefulWidget {
  const MyContent({super.key});

  @override
  State<MyContent> createState() => _MyContentState();
}

class _MyContentState extends State<MyContent> {
  String _content = '';

  @override
  Widget build(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if(_content.isNotEmpty) Padding(
          padding: const EdgeInsets.all(20),
          child: Text(_content),
        ),

        const SizedBox(height: 10),

        ElevatedButton(
          onPressed: () async {
            try {

              setState(() {
                _content = '...Loading';
              });

              var result = await Dio().get('https://baconipsum.com/api/?type=meat-and-filler');

              setState(() {
                _content = result.data[0];
              });

            } catch (e) {
            setState(() {
                _content = 'Error when loading content';
              });
            }
          },
          child: const Text('Get content')
        )
      ],
    );
  }
}

class HttpRequesPage extends StatelessWidget {
  const HttpRequesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Http Request')),
      body: const Center(child: MyContent())
    );
  }
}
