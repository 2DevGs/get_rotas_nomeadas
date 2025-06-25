import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas_nomeadas/pages/home_page.dart';
import 'package:get_rotas_nomeadas/pages/initial/page1.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(
          name: '/', 
          page: () => const HomePage(),
        ),
        GetPage(
          name: '/initial/page1', 
          page: () => const Page1(),
        ),
      ],
    );
  }
}