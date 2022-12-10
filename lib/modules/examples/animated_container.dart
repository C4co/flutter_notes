import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedElement extends StatefulWidget {
  const AnimatedElement({super.key});

  @override
  State<AnimatedElement> createState() => _AnimatedElementState();
}

class _AnimatedElementState extends State<AnimatedElement> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          final random = Random();

          _width = random.nextInt(300).toDouble();
          _height = random.nextInt(300).toDouble();
          _color = Color.fromRGBO(
            random.nextInt(256),
            random.nextInt(256),
            random.nextInt(256),
            1
          );
          _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
        });
      },
      child: AnimatedContainer(
        width: _width,
        height: _height,
        decoration: BoxDecoration(
          color: _color,
          borderRadius: _borderRadius
        ),
        duration: const Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
      ),
    );
  }

}

class AnimatedContainerPage extends StatelessWidget {
  const AnimatedContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated container')),
      body: const Center(
        child: AnimatedElement(),
      ),
    );
  }
}
