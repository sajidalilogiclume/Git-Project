import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:git_project/provider/slider_provider.dart';
import 'package:git_project/util/app_route.dart';
import 'package:go_router/go_router.dart';
final name=Provider<String>((ref){
  return "Sajid";
});
final age= Provider((ref){
  return 23;
});
final stateProvider=StateProvider<int>((ref){
  return 0;
});
final switchProvider=StateProvider<bool>((ref){
  return false;
});
class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {
  @override
  Widget build(BuildContext context) {
    final n=ref.read(name);
    final a=ref.read(age);
    print('build');
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Consumer(builder: (context,ref,child){
              print('eye');
              final slider=ref.watch(sliderProvider.select((state)=>state.showPassword));
              return Center(
                child: InkWell(
                  onTap: (){
                  final stateProvider=ref.read(sliderProvider.notifier);
                  stateProvider.state=stateProvider.state.copyWith(showPassword: !slider);
                  },
                  child: Container(
                    height: 200,
                    width: 200,
                    child: slider? Icon(Icons.cancel) : Icon(Icons.add),
                  ),
                ),
              );
            }),
            Consumer(builder: (context,ref,child){
              final slider=ref.watch(sliderProvider.select((state)=>state.slider));
              return Center(
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.red.withOpacity(slider),
                ),
              );
            }),
           Consumer(builder: (context,ref,child){
             print('slider');
             final slider=ref.watch(sliderProvider.select((state)=>state.slider));
             return Slider(value: slider, onChanged: (value){
               final sliderState=ref.read(sliderProvider.notifier);
               sliderState.state=sliderState.state.copyWith(slider: value);
             });
           }),

           // Consumer(builder: (context,ref,child){
           //   print('print_one1');
           //   return Center(
           //     child: Text(ref.watch(stateProvider).toString(),style: TextStyle(fontSize: 25),),
           //   );
           // }),
           //  Consumer(builder: (context,ref,child){
           //    print('build two');
           //    final count=ref.watch(switchProvider);
           //    return Center(
           //      child: Switch(value:count , onChanged:(value){
           //        ref.read(switchProvider.notifier).state=value;
           //      }),
           //    );
           //  }),
           //  Row(
           //    mainAxisAlignment: MainAxisAlignment.center,
           //    children: [
           //      ElevatedButton(onPressed: (){
           //        ref.read(stateProvider.notifier).state ++;
           //      }, child: Text('Increament')),
           //      ElevatedButton(onPressed: (){
           //        final s=ref.read(stateProvider.notifier).state;
           //        if(s>0){
           //          ref.read(stateProvider.notifier).state --;
           //        }
           //
           //      }, child: Text('Decreament'))
           //    ],
           //  )
          ],
        ),
      ),
    );
  }
}
