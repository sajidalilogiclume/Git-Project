import 'package:flutter/material.dart';
import 'package:git_project/util/app_route.dart';
import 'package:go_router/go_router.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/burger.jpg', width: 200, height: 200),
            SizedBox(height: 20),
            Text('Change  Home Screen',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
            ElevatedButton(onPressed: (){
              context.go(AppRoute.DetailPage.path);
            }, child: Text("Move to Next")),
            ElevatedButton(onPressed: (){
              context.pop();
            }, child: Text("Name"))
          ],
        ),
      )
    );
  }
}
