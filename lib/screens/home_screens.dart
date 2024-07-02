import 'package:flutter/material.dart';

class HomeScreens extends StatelessWidget{
  const HomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: const Text("Todo lis"),
        backgroundColor: Color.fromARGB(255, 2, 94, 187),
      ),
      body: const Center(
        child: Text("Demo todo list"),
      ),
    );
  }

}