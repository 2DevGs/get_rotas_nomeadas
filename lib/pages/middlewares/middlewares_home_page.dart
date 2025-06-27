import 'package:flutter/material.dart';

class MiddlewaresHomePage extends StatelessWidget {

  MiddlewaresHomePage({ super.key }) {
    debugPrint('Criando Pagina MiddlwareshomePage');
  }

  @override
  Widget build(BuildContext context) {

  debugPrint('Criando Build Pagina!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!');

    return Scaffold(
      appBar: AppBar(title: const Text('MIDDLEWARES HOME Page'),),
      body: Center(
        child: ElevatedButton(
          onPressed: (){},
          child: const Text('Botão'),
        ),
      ),
    );
  }
}