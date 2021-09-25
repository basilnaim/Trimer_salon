import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:treamer/bloc/authentication/authentication_%D9%8FEvents.dart';
  import 'package:treamer/bloc/authentication/authentication_Bloc.dart';
import 'package:treamer/utils/Images/images.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      BlocProvider.of<AuthenticationBloc>(context).add(AppStart());
    });

  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child:  Image.asset(splash,fit: BoxFit.cover ,)
      //  Image.asset(logoWithBlackText),
    );
  }



}
