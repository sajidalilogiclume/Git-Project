import 'package:flutter_riverpod/legacy.dart';
import 'package:git_project/data/model/item_model.dart';

final ItemProvider=StateNotifierProvider<ItemNotifier,List<ItemModel>>((ref){
  return ItemNotifier();
});
class ItemNotifier extends StateNotifier<List<ItemModel>>{
  ItemNotifier():super([]);
  void addItem(String name){
    final item=ItemModel(id: DateTime.now().toString(), name: name);
    state.add(item);
    state=state.toList();
  }
  void deleteItem(String id){
    state.removeWhere((item)=>item.id==id);
    state=state.toList();
  }
  void updateIem(String id,String name){
   final index= state.indexWhere((item)=>item.id==id);
    state[index].name=name;
   state= state.toList();
  }
  
}