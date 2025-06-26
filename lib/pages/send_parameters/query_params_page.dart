import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QueryParamsPage extends StatelessWidget {

  const QueryParamsPage({ super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Query Param Page'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Get.parameters['nome'] ?? '',
              style: const TextStyle(
                fontSize: 25
              ),
            ),
            Text(
              Get.parameters['id'] ?? '',
              style: const TextStyle(
                fontSize: 25
              ),
            ),
            Text(
              Get.parameters['curso'] ?? '',
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