import 'package:flutter_riverpod/legacy.dart';

final searchProvider=StateNotifierProvider<SearchNotifier,SearchState>((ref){
  return SearchNotifier();
});
class SearchNotifier extends StateNotifier<SearchState>{
  SearchNotifier():super(SearchState(search: '', isChange: false));
  void search(String search){
    state=state.copyWith(search: search);
  }
  void onChange(bool ischang){
    state=state.copyWith(isChange:ischang);
  }
}
class SearchState{
  final String search;
  final bool isChange;
  SearchState({required this.search,required this.isChange});
  SearchState copyWith({String? search,bool? isChange}){
    return SearchState(search: search ?? this.search, isChange: isChange ?? this.isChange);
  }
}