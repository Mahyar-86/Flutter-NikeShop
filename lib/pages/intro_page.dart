import 'package:flutter/material.dart';
import 'package:nike_shop/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //put nike logo
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset(
                  "lib/images/Logo.png",
                  height: 100,
                ),
              ),
              //create an empty space
              const SizedBox(
                height: 48,
              ),
              //put just do it text
              const Text(
                "Just Do It",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              //create an empty space
              const SizedBox(
                height: 48,
              ),
              //put brand new sneakers and custom kicks text
              const Text(
                "Brand new sneakers and custom kicks made with premium quality",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blueGrey,
                ),
                //make it center
                textAlign: TextAlign.center,
              ),
              //create an empty space
              const SizedBox(
                height: 48,
              ),
              //create shop now button
              GestureDetector(
                //if pressed go to home page
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage())),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  //set a shop now text on button
                  padding: const EdgeInsets.all(25.0),
                  child: const Center(
                    child: Text(
                      "Shop Now",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
