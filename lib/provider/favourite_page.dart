import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:git_project/provider/favourite_provider.dart';
class FavouritePage extends ConsumerStatefulWidget {
  const FavouritePage({super.key});

  @override
  ConsumerState<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends ConsumerState<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    final favouritList=ref.watch(favouriteProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Favourite Item'),
        actions: [
          PopupMenuButton<String>(
              onSelected: (value){
                ref.read(favouriteProvider.notifier).openMenuItem(value);
              },
              itemBuilder: (BuildContext context){
            return [
              PopupMenuItem(
                 value: 'All',
                  child: Text('All')),
              PopupMenuItem(
                  value: 'Favourite',
                  child: Text('Favourite'))
            ];
          })
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
            onChanged: (value){
              ref.read(favouriteProvider.notifier).searchItem(value);
            },
              decoration: InputDecoration(
                border:OutlineInputBorder(),
              label: Text('Search favourite')
            ),),
          ),
          Expanded(
              child: ListView.builder(
              itemCount: favouritList.favouriteList.length
              ,itemBuilder: (context,index){
                final items=favouritList.favouriteList[index];
            return ListTile(
              title: Text(items.name),
              trailing:Icon(items.favourite ? Icons.favorite :Icons.favorite_border),
            );
          }))
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        ref.read(favouriteProvider.notifier).addItem();
      },child: Icon(Icons.add),),
    );

  }
}

