import 'dart:async';
import 'package:flutter/material.dart';
import 'package:git_project/provider/counter_provider.dart';
import 'package:provider/provider.dart';
class CounterPage extends StatefulWidget {
  const CounterPage({super.key});
  @override
  State<CounterPage> createState() => _CounterPageState();
}
class _CounterPageState extends State<CounterPage> {
  late Timer timer;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
  timer=  Timer.periodic(Duration(seconds: 1), (Time){
      final counterProvider=Provider.of<CounterProvider>(context,listen:true);
      counterProvider.counter();
    });

    // Future.delayed(Duration(seconds: 0),(){
    //   final counterProvider=Provider.of<CounterProvider>(context,listen: true);
    // });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    timer.cancel();
  }
  @override
  Widget build(BuildContext context) {
    print('build');
    final counterProvider=Provider.of<CounterProvider>(context,listen: false);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Consumer<CounterProvider>(builder: (context,value,child){
            print('build counter');
            return Text(value.count.toString(),style: TextStyle(fontSize: 25));
          }))
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        counterProvider.counter();
      }),
    );
  }
}
