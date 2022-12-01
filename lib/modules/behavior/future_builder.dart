import 'package:flutter/material.dart';

class MyFutureBuilder extends StatefulWidget {
  const MyFutureBuilder({super.key});

  @override
  State<MyFutureBuilder> createState() => _MyFutureBuilderState();
}

class _MyFutureBuilderState extends State<MyFutureBuilder> {
  final Future<String> _calculation = Future<String>.delayed(
    const Duration(seconds: 10),
    () => 'hello world!'
  );

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: _calculation,
      builder: (context, snapshot){
        if(snapshot.hasData){
          return Text(snapshot.data!);
        }

        if(snapshot.hasError){
          return const Text('Handle error', style: TextStyle(color: Colors.red));
        }

        return const SizedBox(
          width: 40,
          height: 40,
          child: CircularProgressIndicator(color: Colors.blue),
        );
      }
    );
  }
}

class FutureBuildPage extends StatelessWidget {
  const FutureBuildPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Future Builder')),
      body: const Center(
        child: MyFutureBuilder(),
      ),
    );
  }
}
