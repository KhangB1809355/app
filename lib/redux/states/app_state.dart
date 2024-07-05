

import 'package:app/models/drinks.dart';
import 'package:app/models/product.dart';

class AppState {
  List<Drinks> drinks;
  List<Product> product;

  AppState({ this.drinks = const [], this.product = const []});
}