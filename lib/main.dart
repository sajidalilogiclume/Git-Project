import 'package:flutter/material.dart';
import 'package:git_project/pages/home_page.dart';
import 'package:git_project/pages/splash_page.dart';
import 'package:git_project/util/app_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter().router,
      title: 'GoRouter Navigation',
      theme: ThemeData(primaryColor: Colors.blue),
    );
  }
}





