import 'package:app/screens/home_screens.dart';
import 'package:flutter/material.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SafeArea( child: HomeScreens())
    );
  }
  
}