
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RouteMiddlewares extends GetMiddleware  {
  RouteMiddlewares({super.priority});

  @override
  GetPage? onPageCalled(GetPage? page) {
    debugPrint('Executando Middleware onPageCalled');
    return super.onPageCalled(page);
  }

  @override
  Widget onPageBuilt(Widget page) {
    debugPrint('Executando Middleware onPageCalled');
    return Theme(
      data: ThemeData.dark(), 
      child: page
    );
  }

  @override
  RouteSettings? redirect(String? route) {
    if(route == '/initial/page1') {
      return RouteSettings(
        name: '/accessDenied'
      );
    }
    return null;
  }

  @override
  void onPageDispose() {
    debugPrint('Executando Middleware onPageDispose');
    super.onPageDispose();
  }

  @override
  List<Bindings>? onBindingsStart(List<Bindings>? bindings) {
    // TODO: implement onBindingsStart
    return super.onBindingsStart(bindings);
  }

  @override
  GetPageBuilder? onPageBuildStart(GetPageBuilder? page) {
    // TODO: implement onPageBuildStart
    return super.onPageBuildStart(page);
  }

}