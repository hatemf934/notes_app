import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/themecubit/cubit_state.dart';

class ThemeCubit extends Cubit<ThemeCubitState> {
  ThemeCubit() : super(ThemeCubitState.dart);

  tochangetheme() {
    emit(state == ThemeCubitState.dart
        ? ThemeCubitState.light
        : ThemeCubitState.dart);
  }
}
