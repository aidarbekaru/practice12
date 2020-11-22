import 'package:flutter/material.dart';
import 'package:practice12aru/home.dart';

void main() {
  runApp(Practice12());
}

class Practice12 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aruzhan practice 12',
      home: HomePage(),
    );
  }
}
