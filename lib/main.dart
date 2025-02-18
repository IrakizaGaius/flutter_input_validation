import 'package:flutter/material.dart';
import 'screens/form_screen.dart';
import 'screens/display_screen.dart';
import 'screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal Details App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/form': (context) => FormScreen(),
        '/display': (context) => DisplayScreen(),
      },
    );
  }
}
