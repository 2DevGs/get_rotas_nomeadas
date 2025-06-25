import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {

  const HomePage({ super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('HOME PAGE'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                Get.offNamed('/initial/page1');
              },
              child: Text('Initial'),
            ),
            ElevatedButton(
              onPressed: (){
                Get.offNamed('/pagenotfound');
              },
              child: Text('Page not Found'),
            ),
          ],
        )
      ),
    );
  }
}