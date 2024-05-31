import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:olearis_test/presentation/bloc/home/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState());

  void addItem() {
    final List<String> updatedItemList = List.from(state.itemsList);

    updatedItemList.add('Item ${state.itemsList.length + 1}');
    emit(state.copyWith(itemsList: updatedItemList));
  }

  void removeItem() {
    final List<String> updatedItemList = List.from(state.itemsList);
    if (updatedItemList.isNotEmpty) {
      updatedItemList.removeLast();
      emit(state.copyWith(itemsList: updatedItemList));
    }
  }
}
