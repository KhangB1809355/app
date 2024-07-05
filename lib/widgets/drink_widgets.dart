import 'package:app/models/drinks.dart';
import 'package:flutter/material.dart';

class DrinkWidgets extends StatefulWidget {
  const DrinkWidgets(Drinks drink, {super.key});

  @override
  State<DrinkWidgets> createState() => _DrinkWidgetsState();
}

class _DrinkWidgetsState extends State<DrinkWidgets> {
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const Text(""),
        ElevatedButton(onPressed: () {}, child:const Text("Xóa"))
      ],
    );
  }
}