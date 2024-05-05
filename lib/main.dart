import 'package:flutter/material.dart';
import 'screens/screen_0.dart';
import 'screens/screen_1.dart'; // Import Screen1 widget class

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Define your initial route
      initialRoute: '/',
      routes: {
        // Define your routes
        '/': (context) => Screen0(), // Screen0 should be the name of your Screen0 widget class
        '/screen1': (context) => Screen1(), // Add route for Screen1
        // Add more routes if needed
      },
    );
  }
}
