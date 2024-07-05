import 'package:app/redux/actions/drink_action.dart';
import 'package:app/redux/states/app_state.dart';

AppState updateDrinkReducer(AppState state, dynamic action){
  if(action is UpdateDrinkAction){
    print("Update Qua Day");
    return AppState(
      drinks: state.drinks.map((drink)=> drink.name == action.updateDrink.name ? action.updateDrink : drink ).toList()
    );
  }
  return state;
}

AppState updateDrinkReducer1(AppState state, dynamic action){
  if(action is UpdateDrinkAction1){
    print("Update Qua Day khi");
    return AppState(
      drinks: state.drinks.map((drink)=> drink.name == action.updateDrink.name ? action.updateDrink : drink ).toList()
    );
  }
  return state;
}