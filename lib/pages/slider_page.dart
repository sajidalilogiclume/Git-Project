import 'package:flutter/material.dart';
import 'package:git_project/provider/example_one_provider.dart';
import 'package:provider/provider.dart';
class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  @override
  Widget build(BuildContext context) {
    print('built');
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Consumer<ExampleOneProvider>(builder: (context,value,child){
          print('build one');
          return Slider(
              min: 0,
              max: 1,
              value:value.value , onChanged: (val){
            value.setValue(val);
          });
        }),
          Consumer<ExampleOneProvider>(builder: (context,value,child){
            print('build two');
            return  Row(
              children: [
                Expanded(child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.red.withOpacity(value.value)
                  ),
                  child: Center(
                    child: Text('Container one'),
                  ),
                ),),
                Expanded(child:  Container(
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.green.withOpacity(value.value)
                  ),
                  child: Center(
                    child: Text('Container two'),
                  ),
                ))
              ],
            );
          })

        ],
      ),
    );
  }
}
