import 'dart:math';
import 'dart:ui';
class AppConstant{
  String name="Sajid";
  String? City;
  static const Color primaryColor = Color(0xFF6200EA);    // Purple
  static const Color backgroundColor = Color(0xFFFFFFFF); // White
  static const Color textColor = Color(0xFF000000);
}
Future<String>  fetchData() async{
  Future.delayed(Duration(seconds: 3));
  return "Data Loaded";
}
Stream<int> CountersNumber() async*{
  for(int i=1;i<=3;i++){
    await Future.delayed(Duration(seconds: 1));
    yield 1;
  }
}

class AddNumber<T>{
  T n1;
  T n2;
  AddNumber(this.n1,this.n2);
}
extension StringEmail on String{
  bool get isEmail => contains('@');
}
void main() async{
  AddNumber<int> addNumber=AddNumber(2, 4);
  final data= await fetchData();
  CountersNumber().listen((value){
    print(value);
  });
  print("sajidali@gmail.com".isEmail);
}
mixin  AppNavigator{
  void  NavigatorRout(String route){
    print('HomeScreen');
  }
}
class Home with AppNavigator{
  @override
  void NavigatorRout(String route) {
    super.NavigatorRout(route);
  }

}