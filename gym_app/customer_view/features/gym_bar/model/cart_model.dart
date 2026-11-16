//import 'package:myfirstapp/gym/customer_view/gym_bar/model/cart_model.dart';
import 'package:myfirstapp/old_apps/Foodie_app/model/product_model.dart';

class CartItemModel {
  final ProductModel product;
  int quantity;

  CartItemModel({
    required this.product,
    this.quantity = 1,
  });

  double get total => product.price * quantity;
}