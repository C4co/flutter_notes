import "package:flutter/material.dart";

// passing a simple value
class PassText extends StatelessWidget {
  final String content = 'hello world';

  const PassText({
    required content,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Text(content);
  }
}

// passing a function
class PassCallback extends StatelessWidget {
  final VoidCallback? callback;

  const PassCallback({this.callback, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: callback,
      child: const Text('Click me!'));
  }
}

// passing a widget
class PassWidget extends StatelessWidget {
  final Widget? content;

  const PassWidget({this.content, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(child: content);
  }
}

class WidgetProps extends StatelessWidget {
  const WidgetProps({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Widget props')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const PassText(content: 'My text here!'),

            const SizedBox(height: 50),

            PassCallback(callback: (){
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                duration: Duration(seconds: 1),
                content: Text('Called by callback')
              ));
            }),

            const SizedBox(height: 50),

            const PassWidget(content: Text('Passing a widget'))
          ],
        ),
      ),
    );
  }
}
