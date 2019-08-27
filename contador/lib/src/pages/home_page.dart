import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final estiloTexto = TextStyle( fontSize: 25.0);
  final conteo = 10;
  
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
            Text('$conteo', style: estiloTexto),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('Hola desde el boton');
        },

      ),
    );
  }
}
