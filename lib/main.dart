import 'package:flutter/material.dart';
import 'router.dart';

void main() {
  // Initialize the app's router for handling navigation.
  AppRouter.setupRouter(); 
  // Start the app by running the MyApp widget.
  runApp(const MyApp()); 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Set the title of the app.
      title: 'Assignment 4 Flutter Demo', 
      // Set the primary color theme for the app.
      theme: ThemeData(primarySwatch: Colors.indigo), 
      // Define the route generator for navigation.
      onGenerateRoute: AppRouter.router.generator, 
    );
  }
}
