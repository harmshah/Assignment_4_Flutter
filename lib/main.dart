import 'package:flutter/material.dart';
import 'router.dart';

void main() {
  AppRouter.setupRouter();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment 4 Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.indigo),
      onGenerateRoute: AppRouter.router.generator,
    );
  }
}