class PersonModel{
  final String name;
  final int age;
  PersonModel({required this.name,required this.age});
   PersonModel copyWith({String? name,int? age}){
     return PersonModel(name: name ?? this.name, age: age ?? this.age);
   }
  }

