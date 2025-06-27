import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas_nomeadas/pages/home_page.dart';
import 'package:get_rotas_nomeadas/pages/initial/page1.dart';
import 'package:get_rotas_nomeadas/pages/middlewares/access_denied_page.dart';
import 'package:get_rotas_nomeadas/pages/middlewares/middlewares_home_page.dart';
import 'package:get_rotas_nomeadas/pages/middlewares/route_middlewares.dart';
import 'package:get_rotas_nomeadas/pages/nested_navigation/home_nested_navigation.dart';
import 'package:get_rotas_nomeadas/pages/route_not_found/route_not_found_page.dart';
import 'package:get_rotas_nomeadas/pages/send_parameters/arguments_params_page.dart';
import 'package:get_rotas_nomeadas/pages/send_parameters/path_params_page.dart';
import 'package:get_rotas_nomeadas/pages/send_parameters/query_params_page.dart';
import 'package:get_rotas_nomeadas/pages/send_parameters/send_parameters_home_page.dart';
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
      unknownRoute: GetPage(name: '/404', page: () => const RouteNotFoundPage()),
      initialRoute: '/home',
      routingCallback: (Routing? routing) {
        debugPrint(routing?.previous);
        debugPrint(routing?.current);
      },
      getPages: [
        GetPage(
          name: '/home', 
          page: () => const HomePage(),
        ),
        GetPage(
          name: '/initial/page1', 
          page: () => const Page1(),
          middlewares: [
            RouteMiddlewares(),
          ],
        ),
        GetPage(
          name: '/sendparameter', 
          page: () => const SendParametersHomePage(),
          children: [
            GetPage(name: '/arguments', page: () => const ArgumentsParamsPage(),),
            GetPage(name: '/pathParam/:nome/jornadaGetX', page: () => const PathParamsPage(),),
            GetPage(name: '/queryParam', page: () => const QueryParamsPage(),),
          ],
        ),
        GetPage(
          name: '/middlewares', 
          page: () => MiddlewaresHomePage(),
          middlewares: [
            RouteMiddlewares(),
          ],
        ),
        GetPage(
          name: '/accessDenied', 
          page: () => const AccessDeniedPage(),
        ),
        GetPage(
          name: '/nestedNavigation', 
          page: () => HomeNestedNavigation(),
        ),
      ],
    );
  }
}