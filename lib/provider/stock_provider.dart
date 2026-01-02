import 'dart:ffi';
import 'dart:math';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
final stockProvider=StreamProvider<double>((ref) async*{
final random=Random();
double currentPrice=100;
while(true) {
 await Future.delayed(Duration(seconds: 2));
 currentPrice+=random.nextDouble()* 4 - 2;
 yield double.parse(currentPrice.toStringAsFixed(2));
}
});
