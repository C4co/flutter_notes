import 'package:flutter/material.dart';

class IconPage extends StatelessWidget {
  const IconPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(title: const Text('Icon')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Column(
              children: const [
                Icon(Icons.favorite_rounded, color: Colors.blue, size: 70),
                Text('Icon')
              ],
            )),

            const SizedBox(height: 40),

            Center(
              child: Column(
                children: [
                  IconButton(
                    iconSize: 70,
                    onPressed: (){
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        duration: Duration(seconds: 1),
                        content: Text('Tap gesture')
                      ));
                    },
                    icon: const Icon(Icons.favorite, color: Colors.red)
                  ),
                  const Text('Icon button')
                ],
              ),
            )
          ],
        ),
    );
  }
}