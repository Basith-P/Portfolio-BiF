import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:google_fonts/google_fonts.dart';

import 'screens/about_screen.dart';
import 'screens/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Portfolio',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: Colors.white,
          textTheme: ThemeData.light().textTheme.copyWith(
                headline1: GoogleFonts.openSans(
                  color: Colors.grey[900],
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  height: 1.4,
                ),
              ),
        ),
        routes: {
          '/': (ctx) => const HomeScreen(),
          AboutScreen.routName: (ctx) => const AboutScreen(),
        });
  }
}
