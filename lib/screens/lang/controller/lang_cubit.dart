
 import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'lang_states.dart';

class LangCubit extends Cubit<LangClass>{
  LangCubit():super(InitialLang());

  static LangCubit get(context) => BlocProvider.of(context);

  bool arabicLang= true;
  bool engLang= false;
  void changtoarabic(bool arabic){
    arabicLang=arabic;

    emit(ChangeLang());
  }
  void changtoeng(bool eng){
    engLang=eng;
    emit(ChangeLang());
  }


 }