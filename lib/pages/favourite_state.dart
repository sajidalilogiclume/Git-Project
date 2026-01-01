import 'package:git_project/data/model/favourite_model.dart';

class FavouriteState{
  List<FavouriteModel> allList ;
  List<FavouriteModel>   favouriteList;
  String search;
  FavouriteState({required this.allList,required this.favouriteList ,required this.search});
  FavouriteState copyWith({List<FavouriteModel>? allList,List<FavouriteModel>? favouriteList,String? search}){
    return FavouriteState(allList: allList ?? this.allList, favouriteList: favouriteList ?? this.favouriteList, search: search ?? this.search);
  }
}