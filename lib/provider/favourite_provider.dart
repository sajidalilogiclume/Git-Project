 import 'package:flutter_riverpod/legacy.dart';
import 'package:git_project/data/model/favourite_model.dart';
import 'package:git_project/pages/favourite_state.dart';
import 'package:git_project/pages/splash_page.dart';
final favouriteProvider =StateNotifierProvider<FavouriteNotifier,FavouriteState>((ref){
  return FavouriteNotifier();
});
class FavouriteNotifier extends StateNotifier<FavouriteState>{
      FavouriteNotifier() :super(FavouriteState(allList: [], favouriteList:[], search: ''));
      void addItem(){
        final items=[
          FavouriteModel(id: '1', name: "sajid", favourite: true),
          FavouriteModel(id: '2', name: "arif", favourite: false),
          FavouriteModel(id: '3', name: "waseem", favourite: true),
          FavouriteModel(id: '4', name: "nadeeem", favourite: false),
          FavouriteModel(id: '5', name: "anu", favourite: true),
        ];
        state= state.copyWith(allList: items,favouriteList: items);
      }
      void searchItem(String name){
         state=state.copyWith(favouriteList: _favouritList(state.allList, name));
      }
      List<FavouriteModel> _favouritList(List<FavouriteModel> items,String name){
        if(name.isEmpty) return items;
        final newItems=items.where((items)=>items.name.toLowerCase().contains(name)).toList();
        return newItems;

       }
       void openMenuItem(String option){
        state=state.copyWith(favouriteList: _menuList(state.allList, option));

       }
       List<FavouriteModel> _menuList(List<FavouriteModel> items,String option){
        if(option=="All") return items;
        return  items.where((items)=>items.favourite==true).toList();
       }
 }