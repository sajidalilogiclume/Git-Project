import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:git_project/provider/future_provider.dart';
class FuturePage extends ConsumerWidget {
  const FuturePage({super.key});
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final asyncValue = ref.watch(futureProvider);
    return Scaffold(
      appBar: AppBar(title: Text('Post Api'),),
      body: asyncValue.when(data: (data)=>ListView.builder(
        itemCount: data.length,
          itemBuilder: (context,index){
        return Card(
          child: ListTile(
            title: Text(data[index].title),
            subtitle: Text(data[index].body),
          ),
        );
      }), error: (error,stackTrace)=> TextButton(onPressed: (){
        ref.invalidate(futureProvider);
      }, child: Text('error:$error')),
          loading: ()=>CircularProgressIndicator()),
    );
  }
}
