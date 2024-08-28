import 'package:flutter/material.dart';
import 'package:nike_tutorial/models/shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Zoom FREAK',
        price: '236',
        imagePath: 'lib/images/nikeWhite.jpeg',
        description:
            'The forward-thinking design of his latest signature shoe.'),
    Shoe(
        name: 'Air Jordan',
        price: '236',
        imagePath: 'lib/images/nikeBlack.jpeg',
        description:
            'The forward-thinking design of his latest signature shoe.'),
    Shoe(
        name: 'KD Treys',
        price: '236',
        imagePath: 'lib/images/nikeWhite.jpeg',
        description:
            'The forward-thinking design of his latest signature shoe.'),
    Shoe(
        name: 'Kyrie 6',
        price: '236',
        imagePath: 'lib/images/nikeBlack.jpeg',
        description:
            'The forward-thinking design of his latest signature shoe.'),
  ];

  //list of items in user cart
  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add item to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
