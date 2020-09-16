import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inventory_app/home.dart';
import 'package:flutter/services.dart';
import 'package:inventory_app/login.dart';
import 'package:inventory_app/login/screens/auth/auth.dart';
import 'package:inventory_app/login/screens/splash.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'bloc/bloc_user.dart';
import 'login/config/palette.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      child: MaterialApp(
        home: Login(),
      ),
      bloc: UserBloc(),
    );
    /*return LitAuthInit(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: GoogleFonts.muliTextTheme(),
          accentColor: Palette.darkOrange,
          appBarTheme: const AppBarTheme(
            brightness: Brightness.dark,
            color: Palette.darkBlue,
          ),
        ),

        // home: const LitAuthState(
        //   authenticated: Home(),
        //   unauthenticated: Unauthenticated(),
        //),
        home: SplashScreen()
      ),
    );*/
  }
}

    /*WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // transparent status bar
    ));*/
