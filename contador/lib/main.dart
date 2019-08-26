import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {

  @override
  build( context ) {
    return MaterialApp(
      home: Center(
        child: Text('Hola mundo'),
      ),
    );
  }
}