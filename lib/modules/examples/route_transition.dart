
import 'package:flutter/material.dart';

class RouteTransitionPage extends StatelessWidget {
  const RouteTransitionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Route transition')),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.of(context).push(_createRoute());
          },
          child: const Text('Navigate to page 2')
        )
      ),
    );
  }
}

Route _createRoute(){
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const Page2(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      var curve = Curves.ease;
      var curveTween = CurveTween(curve: curve);

      final tween = Tween(begin: begin, end: end).chain(curveTween);

      final curvedAnimation = CurvedAnimation(
        parent: animation,
        curve: curve
      );

      return SlideTransition(
        position: tween.animate(curvedAnimation),
        child: child,
      );
    },
  );
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page 2')),
      body: const Center(
        child: Text('Go to page 2'),
      ),
    );
  }
}

