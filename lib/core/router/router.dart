import 'package:ezv/presentation/detail/page/detail_page.dart';
import 'package:ezv/presentation/home/page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:ezv/core/router/router_constant.dart';

class Router {
  Route generateRouter(Widget page, RouteSettings settings) {
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => getPageRoute(settings),
    );
  }

  Widget getPageRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouterConstant.detailPage:
        return const DetailPage();
      default:
        return const HomePage();
    }
  }

  Route? generateAppRoutes(RouteSettings settings) {
    Widget getRoutedWidget = getPageRoute(settings);
    return generateRouter(getRoutedWidget, settings);
  }
}
