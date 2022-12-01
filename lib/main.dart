import 'package:flutter/material.dart';
import 'modules/home/home.dart';

void main(List<String> args) {
  runApp(
    const MaterialApp(
      title: 'app',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
  );
}
