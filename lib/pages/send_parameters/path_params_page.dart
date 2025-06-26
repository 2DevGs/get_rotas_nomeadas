import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PathParamsPage extends StatelessWidget {

  const PathParamsPage({ super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Path Param Page'),),
      body: Center(
        child: Text(
          Get.parameters['nome']!,
          style: const TextStyle(
            fontSize: 25
          ),
        ),
      ),
    );
  }
}