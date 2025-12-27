import 'package:flutter/material.dart';
import 'package:git_project/util/app_route.dart';
import 'package:go_router/go_router.dart';
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Splash Screen',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            ElevatedButton(onPressed: (){
              context.go(AppRoute.HomePage.path);
            }, child: Text('Move to Next'))
          ],
        ),
      ),
    );
  }
}
