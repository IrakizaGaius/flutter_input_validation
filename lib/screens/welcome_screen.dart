import 'package:flutter/material.dart';

/// A stateless widget that represents the welcome screen of the app.
/// It displays a welcoming message, an icon, and a button to navigate to the form screen.
class WelcomeScreen extends StatelessWidget {
  /// Constructor for [WelcomeScreen].
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        /// Background decoration with a gradient color effect.
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueAccent, Colors.cyan], // Gradient from blue to cyan.
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min, // Ensures the column is as small as possible.
            children: [
              /// App Icon
              Icon(
                Icons.note_add, // Represents adding notes.
                size: 100,
                color: Colors.white,
              ),
              SizedBox(height: 20), // Spacing between icon and text.

              /// Main Welcome Text
              Text(
                'Welcome to My App',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10), // Spacing between title and subtitle.

              /// Subtitle Text
              Text(
                'Easily manage and store your personal details.',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white70,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40), // Spacing before the button.

              /// Navigation Button to the Form Screen
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Rounded corners for the button.
                  ),
                ),
                onPressed: () {
                  /// Navigates to the form screen when pressed.
                  Navigator.pushNamed(context, '/form');
                },
                child: Text(
                  'Go to Form',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}