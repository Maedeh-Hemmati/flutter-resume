import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume/core/utils/constants.dart';
import 'package:resume/presentation/splash/splash_view.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: primaryColor,
          scaffoldBackgroundColor: secondaryColor,
          useMaterial3: true,
          textTheme: GoogleFonts.openSansTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.white,)
              .copyWith(
            bodyLarge: const TextStyle(color: grayColor),
            bodyMedium: const TextStyle(color: grayColor),
          ),
        ),

        home: const SplashView()
    );
  }
}


