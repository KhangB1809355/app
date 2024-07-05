import 'package:app/models/drinks.dart';
import 'package:app/redux/actions/drink_action.dart';
import 'package:app/redux/states/app_state.dart';
import 'package:app/widgets/drink_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class ReduxScreen extends StatefulWidget {
  const ReduxScreen({super.key});

  @override
  State<ReduxScreen> createState() => _ReduxScreenState();
}

class _ReduxScreenState extends State<ReduxScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: StoreConnector<AppState, List<Drinks>>(
        converter: (store) => store.state.drinks,
        builder: (context, List<Drinks> stateDrrinks) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            ...stateDrrinks.map((drink) =>  
            Row(
              children: [
                const Text(""),
                ElevatedButton(onPressed: () {
                  StoreProvider.of<AppState>(context).dispatch(
                    UpdateDrinkAction(drink)
                  );
                }, child:const Text("Xóa"))
              ],
            )
            
            
            ).toList(),
          ],
        ),
      ),
    ));
  }
}
