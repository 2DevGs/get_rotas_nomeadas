import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SendParametersHomePage extends StatelessWidget {

  const SendParametersHomePage({ super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Send Parameter Home'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                Get.toNamed(
                  '/sendparameter/arguments', 
                  arguments: {
                    'name': 'Gustavo Serrano',
                    'curso': 'Jornada GetX',
                    'msg': 'Send parameter with arguments'
                  },
                );
              },
              child: const Text('Arguments'),
            ),
            ElevatedButton(
              onPressed: (){
                final param = Uri.encodeFull('Gustavo Dias');
                Get.toNamed('/sendparameter/pathParam/$param/jornadaGetX');
              },
              child: const Text('Path Param'),
            ),
            ElevatedButton(
              onPressed: (){
                Get.toNamed('/sendparameter/queryParam?nome=Gustavo Dias&id=1&curso=jornada getx');
              },
              child: const Text('Query Param'),
            ),
            ElevatedButton(
              onPressed: (){
                Get.toNamed(
                  '/sendparameter/queryParam',
                  parameters: {
                    'nome': 'Gustavo Dias',
                    'id': '1',
                    'curso':  'jornada getx'
                  },
                );
              },
              child: const Text('Query Param (Parameters)'),
            ),
          ],
        ),
      ),
    );
  }
}