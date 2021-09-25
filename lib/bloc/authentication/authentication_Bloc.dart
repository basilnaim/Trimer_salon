import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
 import 'package:shared_preferences/shared_preferences.dart';

import 'authentication_ٍStates.dart';
import 'authentication_ُEvents.dart';
class AuthenticationBloc
    extends Bloc<AuthenticationEvents, AuthenticationStates> {
  AuthenticationBloc() : super(Uninitialized());

  @override
  Stream<AuthenticationStates> mapEventToState(AuthenticationEvents event)async* {
     if (event is AppStart ){
           SharedPreferences pref = await SharedPreferences.getInstance();
           if(pref.getBool('firstOpen')  == null ){
             yield UnAuthenticated();
           }
     }
  }
}
