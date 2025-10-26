import 'package:flutter/material.dart';
import 'package:couldai_user_app/screens/login_screen.dart';
import 'package:couldai_user_app/screens/main_screen.dart';
import 'package:couldai_user_app/screens/about_screen.dart';

void main() {
  runApp(const VioraApp());
}

class VioraApp extends StatelessWidget {
  const VioraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Viora',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.deepPurple,
        scaffoldBackgroundColor: const Color(0xFF121212),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1F1F1F),
          elevation: 0,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: const Color(0xFF1F1F1F),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide.none,
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/main': (context) => const MainScreen(),
        '/about': (context) => const AboutScreen(),
      },
    );
  }
}
