import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final estiloTexto = TextStyle( fontSize: 25.0);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Número de Clicks:', style: estiloTexto),
            Text('0', style: estiloTexto),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
