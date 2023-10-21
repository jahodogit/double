import 'package:doublev/home/app_home_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> buildAppRoutes() {
  return {
    'home': (BuildContext context) => const AppHomePage(),
  };
}
