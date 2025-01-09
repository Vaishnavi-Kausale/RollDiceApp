import 'package:flutter/material.dart';
import 'package:myfirstapp/gradient_container.dart';


void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
         Color.fromARGB(255, 45, 204, 244), 
         Color.fromARGB(255, 255, 235, 59),
         ),
      ),
    ),
  );
}
 

