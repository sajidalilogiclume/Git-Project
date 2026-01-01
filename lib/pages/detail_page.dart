import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:git_project/provider/future_provider.dart';
import 'package:go_router/go_router.dart';
import '../util/app_route.dart';
class DetailPage extends ConsumerWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final provider=ref.watch(futureProvider);
    return Scaffold(
      body: Center(
        child: provider.when(
          skipLoadingOnRefresh: false,
            data: (data)=>ListView.builder(
          itemCount: data.length,
            itemBuilder: (context,index){
          return Text(data[index].toString());
        }),
            error: (error,stack)=> Text(error.toString()),
            loading: ()=>CircularProgressIndicator()),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        ref.invalidate(futureProvider);
      }),
    );
  }
}

