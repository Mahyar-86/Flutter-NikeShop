import 'package:flutter/material.dart';
import 'package:nike_shop/models/cart.dart';
import 'package:nike_shop/models/shoe.dart';
import 'package:provider/provider.dart';
import 'package:nike_shop/components/cart_item.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //cart page title
            const Text(
              "My Cart",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            //create an empty space
            const SizedBox(height: 10.0),
            //fill the empty space with cart items
            Expanded(
              child: ListView.builder(
                //get cart items value
                itemCount: value.getUserCart().length,
                itemBuilder: (context, index) {
                  Shoe individualShoe = value.getUserCart()[index];
                  return CartItem(shoe: individualShoe);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
