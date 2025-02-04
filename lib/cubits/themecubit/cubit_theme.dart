import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/themecubit/cubit_state.dart';

class ThemeCubit extends Cubit<ThemeCubitState> {
  ThemeCubit() : super(ThemeCubitState.dark);

  tochangetheme() {
    emit(state == ThemeCubitState.dark
        ? ThemeCubitState.light
        : ThemeCubitState.dark);
  }
}
