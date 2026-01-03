import 'package:flutter/cupertino.dart';
class CounterProvider extends ChangeNotifier{
  int _count=0;
  int get count=> _count;
  void counter(){
    _count++;
    notifyListeners();
  }

}