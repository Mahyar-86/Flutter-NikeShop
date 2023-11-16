import 'package:flutter/material.dart';
import 'package:nike_shop/models/shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoe models
  List<Shoe> shoeShop = [
    Shoe(
        name: "Air Jordan",
        price: "240",
        imagePath: "lib/images/S1.png",
        description:
            "Nike's first lifestyle Air Max brings you style, comfort and big attitude."),
    Shoe(
        name: "Kyrie 6",
        price: "280",
        imagePath: "lib/images/S4.png",
        description:
            "A springy ride for any run, the Peg’s familiar, just-for-you feel returns to help you accomplish your goals."),
    Shoe(
        name: "Zoom FREAK",
        price: "180",
        imagePath: "lib/images/S2.png",
        description:
            "durably stitched overlays, clean finishes and the perfect amount of flash to make you shine."),
    Shoe(
        name: "KD Treys",
        price: "320",
        imagePath: "lib/images/S3.png",
        description:
            "A combination of breathable and durable materials stands ready for the rigors of your day."),
  ];

  //user cart list
  List<Shoe> userCart = [];

  //get list of shoes function
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get user cart function
  List<Shoe> getUserCart() {
    return userCart;
  }
  
  //add item to user cart function
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }
  
  //remove item from user cart function
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
