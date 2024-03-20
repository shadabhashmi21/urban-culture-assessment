import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:urban_culture_assessment/resources/app_colors.dart';
import 'package:urban_culture_assessment/screen/skincare_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(final BuildContext context) => MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.offWhite),
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.offWhite,
        ),
        textTheme: GoogleFonts.epilogueTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: const SkincareScreen(),
    );
}
