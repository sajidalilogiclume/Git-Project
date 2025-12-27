import 'package:git_project/data/model/user_model.dart';
class HelperMethod{
  List<UserModel> getUserList(){
    return [
      UserModel(name: 'sajid', skill: 'android developer'),
      UserModel(name: 'akber', skill: 'flutter developer'),
      UserModel(name: 'asim', skill: 'react developer'),
      UserModel(name: 'amir', skill: 'python developer')
    ];
  }
}