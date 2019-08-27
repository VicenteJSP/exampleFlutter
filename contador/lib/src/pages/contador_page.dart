import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ContadorPageState();
}

class _ContadorPageState extends State {
  final _estiloTexto = TextStyle(fontSize: 25.0);
  int _conteo = 0;

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
            Text('Número de Tabs:', style: _estiloTexto),
            Text('$_conteo', style: _estiloTexto),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 20.0),
        FloatingActionButton( 
          child: Icon(Icons.refresh),
          onPressed: _restablecer,
        ),
        Expanded(
          child: SizedBox( width: 15.0 ),
        ),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: _restar,
        ),
        SizedBox( width: 5.0 ),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _agregar,
        )
      ],
    );
  }

  void _agregar() => setState(() => _conteo++ );
  void _restar() => setState(() => _conteo > 0 ?_conteo-- : print('No quiero numeros negativos') );
  void _restablecer() => setState(() => _conteo = 0 );
  
}