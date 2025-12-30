import 'package:flutter/material.dart';
import 'package:git_project/pages/detail_page.dart';
import 'package:git_project/pages/home_page.dart';
import 'package:git_project/pages/splash_page.dart';
import 'package:go_router/go_router.dart';

class AppRouter{
 final GoRouter router=GoRouter(
     initialLocation: AppRoute.SplashPage.path,
     routes: [
       GoRoute(path: AppRoute.SplashPage.path,name: AppRoute.SplashPage.path,builder: (context,state)=>SplashPage()),
       GoRoute(path: AppRoute.HomePage.path,name: AppRoute.HomePage.path,builder: (context,state)=>HomePage()),
       GoRoute(path: AppRoute.DetailPage.path,name: AppRoute.DetailPage.path,builder: (context,state)=>DetailPage()),
     ]);
}

enum AppRoute {
  SplashPage,
  HomePage,
  DetailPage,
}
extension PathName on AppRoute {
  String get path => switch (this) {
    AppRoute.SplashPage => '/',
    AppRoute.HomePage => '/home',
    AppRoute.DetailPage => '/detail',
  };
}
