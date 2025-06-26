import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ArgumentsParamsPage extends StatelessWidget {

  const ArgumentsParamsPage({ super.key });

  @override
  Widget build(BuildContext context) {

    Map<String, String> arguments = Get.arguments;

    return Scaffold(
      appBar: AppBar(title: const Text('Arguments Param Page'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              arguments['name'] ?? 'Nome não encontrado',
              style: const TextStyle(
                fontSize: 25
              ),
            ),
            Text(
              arguments['curso'] ?? 'Curso não encontrado',
              style: const TextStyle(
                fontSize: 22
              ),
            ),
            Text(
              arguments['msg'] ?? 'Msg não encontrada',
              style: const TextStyle(
                fontSize: 25
              ),
            ),
          ],
        ),
      ),
    );
  }
}