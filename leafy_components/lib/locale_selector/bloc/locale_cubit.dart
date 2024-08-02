import 'package:flutter_bloc/flutter_bloc.dart';

class LocaleCubit extends Cubit<String> {
  LocaleCubit() : super('en');

  void changeLocale(String localeCode) {
    emit(localeCode);
  }
}