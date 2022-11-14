import 'package:flutter/material.dart';

class DialogPage extends StatelessWidget {
  const DialogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dialog')),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            showDialog<String>(
              context: context,
              builder: (BuildContext context)  => AlertDialog(
                title: const Text('Alert Title'),
                content: const Text('Alert Description'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'Cancel'),
                    child: const Text('Cancel'),
                  )
                ],
              )
            );
          },
          child: const Text('Open dialog')),
      )
    );
  }
}
