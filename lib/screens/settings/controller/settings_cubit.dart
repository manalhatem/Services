
 import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'settings_states.dart';

class SettingsCubit extends Cubit<SettingsClass>{
  SettingsCubit():super(InitialSetting());

  static SettingsCubit get(context) => BlocProvider.of(context);

  bool isNotify= false;

  void changeNotify(bool val){
   isNotify= val;
   emit(ChangeNotifySetting());
  }

 }