import 'package:flutter/material.dart';
import 'dart:ui';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/src/assets/images/food_wallpaper.webp'),
                fit: BoxFit.cover,
              ),
            ),
          child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
              child: Container(
                color: Colors.black.withOpacity(0.3),
              ),
            ),
          ),
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 24.0),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: const Text(
          'Delivery app test',
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
        child: const Text(
          'We can find restaurants near you',
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
          ),
          textAlign: TextAlign.center,
        ),
      ),

      const SizedBox(height: 20),

      SizedBox(
        width: double.infinity,
        height: 45,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          onPressed: () {

            Navigator.pushNamed(context, 'login');
          },
          child: const Text('I have an account'),
        ),
      ),

      const SizedBox(height: 15),

      SizedBox(
        width: double.infinity,
        height: 45,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, 'sign-up');
            
          },
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.phone),
              SizedBox(width: 10),
              Text('log in with phone'),
            ],
          ),
        ),
      ),
    ],
  ),
),
        ],
      ),
    );
  }
}