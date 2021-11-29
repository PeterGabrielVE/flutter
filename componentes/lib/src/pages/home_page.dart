import 'dart:js';

import 'package:componentes/src/providers/menu_provider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        print(snapshot.data);
        return ListView(
          children: _listaItems(),
        );
      },
    );
    // ;
  }

  List<Widget> _listaItems() {
    return [
      const ListTile(title: Text('Hola mundoo')),
      const ListTile(title: Text('Hola mundoo')),
    ];
  }
}
