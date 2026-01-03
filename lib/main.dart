import 'package:flutter/material.dart';
import 'package:git_project/provider/counter_provider.dart';
import 'package:git_project/provider/example_one_provider.dart';
import 'package:git_project/util/app_route.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const  MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_)=>ExampleOneProvider()),
          ChangeNotifierProvider(create: (_)=>CounterProvider()),


    ],child: MaterialApp.router(
      debugShowCheckedModeBanner: false,
       routerConfig: AppRouter().router,
       title: 'GoRouter Navigation',
      theme: ThemeData(primaryColor: Colors.blue),
    ),);
  }
}





