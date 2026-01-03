import 'package:flutter/foundation.dart';

class ExampleOneProvider extends ChangeNotifier{
  double _value =0.5;
  double get value =>_value;
  void setValue(double val){
    print('value get');
    _value=val;
    notifyListeners();
  }

}