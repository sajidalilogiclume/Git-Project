import 'package:flutter/material.dart';
import 'package:git_project/pages/home_page.dart';
import 'package:git_project/pages/splash_page.dart';
import 'package:git_project/util/app_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter().router,
      title: 'GoRouter Navigation',
      theme: ThemeData(primaryColor: Colors.blue),
    );
  }
}





