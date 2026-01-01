import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:git_project/data/model/item_provider.dart';
import 'package:git_project/provider/search_provider.dart';
import 'package:riverpod/riverpod.dart';
class ProviderPage extends ConsumerStatefulWidget {
  const ProviderPage({super.key});
  @override
  ConsumerState<ProviderPage> createState() => _ProviderPageState();
}
class _ProviderPageState extends ConsumerState<ProviderPage> {
  @override
  Widget build(BuildContext context) {
    final item=ref.watch(ItemProvider);
    print('build');
    return Scaffold(
      body: Padding(padding: EdgeInsets.all(10),
      child:item.isEmpty ? Center(
        child: Text('donot found data'),
      ) :ListView.builder(
          itemCount: item.length,
          itemBuilder: (context,index){
            return item.isEmpty ? Center(
              child: Text('date donot foound'),
            ):item.isEmpty?Center(child: Text('Data donot found'),):ListTile(
              title:Text(item[index].name),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(onPressed: (){
                    ref.read(ItemProvider.notifier).deleteItem(item[index].id);
                  }, icon: Icon(Icons.delete)),
                  IconButton(onPressed: (){
                    ref.read(ItemProvider.notifier).updateIem(item[index].id,'update name');
                  }, icon: Icon(Icons.edit))
                ],
              ),);
          })),
      floatingActionButton: FloatingActionButton(onPressed: (){
        ref.read(ItemProvider.notifier).addItem('sajid ali');
      }),
    );
  }
}


