import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:git_project/data/model/post_model.dart';
import 'package:http/http.dart' as http;
final futureProvider=FutureProvider<List<PostModel>>((ref) async {
  try{
    final response=await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    if(response.statusCode==200){
      final List<dynamic> data=jsonDecode(response.body);
      final List<PostModel> postList=data.map((e)=>PostModel.fromJson(e)).toList();
      return postList;
    }else{
      throw "Something went wrong";
    }
     return [];
  }catch(e){
    rethrow;
  }
});