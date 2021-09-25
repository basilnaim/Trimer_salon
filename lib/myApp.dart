import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
 import 'Ui/Splash/splash_Screen.dart';
import 'Ui/landing/landing_Screen.dart';
import 'bloc/authentication/authentication_Bloc.dart';
import 'bloc/authentication/authentication_ٍStates.dart';

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AuthenticationBloc authenticationBloc = new AuthenticationBloc();
  Color primaryColor = Color(0xff0C9DDA);
  Color accentColor = Color(0xff1CC7F0);

  @override
  void initState() {
    print("inidisdsidsidsds");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        return authenticationBloc;
      },
      child: MaterialApp(

        theme: ThemeData(
          inputDecorationTheme: InputDecorationTheme(

          ) ,
          primaryColor: primaryColor,
          accentColor: accentColor,
          textTheme: TextTheme(
            headline1: TextStyle(
              fontSize: 14,
                color: Colors.black
            ) ,  headline2: TextStyle(
              fontSize: 16,
              color: Colors.black
            ) ,  headline3: TextStyle(
              fontSize: 18,
              color: Colors.black
            ) ,  headline4: TextStyle(
              fontSize: 20,
            color: Colors.black
            ) ,  headline5: TextStyle(
              fontSize: 22,
              color: Colors.black
            ) ,
          )
        ) ,
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        title: 'Tech_Fit',

        home: BlocBuilder(
          cubit: authenticationBloc,
          builder: (BuildContext context, state) {
            if (state is Uninitialized) {
              return SplashScreen();
            } else if (state is UnAuthenticated) {
              return LandingScreen();
            } else {
              return LandingScreen();
            }
          },
        ),
      ),
    );
  }
}
