import 'package:app/models/drinks.dart';
import 'package:app/models/product.dart';
import 'package:app/redux/reducers/combine_reducers.dart';
import 'package:app/redux/states/app_state.dart';
import 'package:app/redux/reducers/drink_reducers.dart';
import 'package:app/widgets/redux_screen.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import "package:flutter_redux/flutter_redux.dart";

import 'package:redux/redux.dart';
void main() {
  runApp(Myapp());
}



class Myapp extends StatefulWidget {
  
  const Myapp({super.key});



  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {

  final Store<AppState> _store = Store<AppState>(rootReducer, initialState: AppState(drinks: [Drinks("1", "CaFe")]));

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: _store,
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Redux  solutiob - Flutter Explained",
        home: ReduxScreen(),
      ),
    );
  }
}
