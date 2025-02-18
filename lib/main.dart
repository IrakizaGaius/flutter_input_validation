// Import necessary Flutter packages and custom screens
import 'package:flutter/material.dart';
import 'screens/form_screen.dart';
import 'screens/display_screen.dart';
import 'screens/welcome_screen.dart';

// Entry point of the Flutter application
void main() {
  runApp(MyApp());
}

// Main application widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application title
      title: 'Personal Details App',
      // Application theme
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Initial route when the app starts
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(
        textScaler: TextScaler.linear(1.0), // Prevents text scaling
          ),
          child: child!,
        );
      },
      initialRoute: '/',
      // Define the routes for the application
      routes: {
        // Route for the welcome screen
        '/': (context) => WelcomeScreen(),
        // Route for the form screen
        '/form': (context) => FormScreen(),
        // Route for the display screen
        '/display': (context) => DisplayScreen(),
      },
    );
  }
}
