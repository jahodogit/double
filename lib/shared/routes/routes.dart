import 'package:doublev/home/app_home_page.dart';
import 'package:doublev/user_manager/user_manager_home.dart';
import 'package:doublev/user_manager/widgets/user_form.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> buildAppRoutes() {
  return {
    AppHomePage.route: (BuildContext context) => const AppHomePage(),
    UserManagerHomePage.route: (BuildContext context) => const UserManagerHomePage(),
    UserFormPage.route: (BuildContext context) => const UserFormPage(),
  };
}
