import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
    print('build');

    return Scaffold(
      body: Padding(padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField( onChanged: (value){
            ref.read(searchProvider.notifier).search(value);
          },decoration: InputDecoration(
              label: Text('Enter Description')
          ),

          ),
      Consumer(builder: (context,ref,child){
        print('build search');
        final search=ref.watch(searchProvider.select((state)=>state.search));
        return Text(search);
      }),
          Consumer(builder: (context,ref,child){
            print('build onchange');
            final search=ref.watch(searchProvider.select((state)=>state.isChange));
            return Switch(value:search , onChanged: (value){
              ref.read(searchProvider.notifier).onChange(value);
            });
          })
        ],
      ),)
    );
  }
}


