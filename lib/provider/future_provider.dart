import 'package:flutter_riverpod/flutter_riverpod.dart';

final futureProvider=FutureProvider<List<String>>((ref) async{
  await Future.delayed(Duration(seconds: 2));
  throw 'internet issue';
  return ['sajid','arif','akmal','zamin','aqeel'];
});