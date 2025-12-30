import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:git_project/data/model/user_model.dart';
class HelperMethod{
 static List<UserModel> getUserList(){
    return [
      UserModel(name: 'sajid', skill: 'android developer'),
      UserModel(name: 'akber', skill: 'flutter developer'),
      UserModel(name: 'asim', skill: 'react developer'),
      UserModel(name: 'amir', skill: 'python developer')
    ];
  }
 static void appNavigator(BuildContext context,Widget screen){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>screen));
  }
}
