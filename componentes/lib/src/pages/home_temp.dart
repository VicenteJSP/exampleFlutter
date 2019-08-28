import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final List<String> opciones = ['uno','dos','tres','cuatro','cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Componentes temporal')),
      body: ListView(
        children: _crearItems()
      ),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>(); 
    for (var opt in opciones) {

      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista..add(tempWidget)..add(Divider());
      
    }
    return lista;
  }
}