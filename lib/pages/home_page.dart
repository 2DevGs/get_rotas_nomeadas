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
              child: const Text('Initial'),
            ),
            ElevatedButton(
              onPressed: (){
                Get.offNamed('/pagenotfound');
              },
              child: const Text('Page not Found'),
            ),
            ElevatedButton(
              onPressed: (){
                Get.offNamed('/sendparameter');
              },
              child: const Text('Send Parameters'),
            ),
            ElevatedButton(
              onPressed: (){
                Get.offNamed('/middlewares');
              },
              child: const Text('Middlewares'),
            ),
            ElevatedButton(
              onPressed: (){
                Get.offNamed('/nestedNavigation');
              },
              child: const Text('Nested Navigation'),
            ),
          ],
        )
      ),
    );
  }
}