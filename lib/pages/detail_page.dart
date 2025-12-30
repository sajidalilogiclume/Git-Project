import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../util/app_route.dart';
class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              context.pop();
            }, child: Text('Detail Page'))
          ],
        ),
      ),
    );
  }
}
