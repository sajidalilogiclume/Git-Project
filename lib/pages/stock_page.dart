import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:git_project/pages/splash_page.dart';
import 'package:git_project/provider/stock_provider.dart';
class StockPage extends ConsumerWidget {
  const StockPage({super.key});
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    print('build');
    return Scaffold(
      body: Center(
        child:Consumer(builder: (context,ref,child){
          print('build 2');
          final provider=ref.watch(stockProvider);
          return provider.when(data: (value){
            return Text(value.toStringAsFixed(2).toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30));
          }, error: (error,stackTrace)=>Text(error.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
              loading: ()=>CircularProgressIndicator());
        }),
      ),
    );
  }
}
