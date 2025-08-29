import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // left-align text
            children: [
              // Center the image
              Center(
                child: Image.asset(
                  "images/splash_screen.png",
                ),
              ),
              const SizedBox(height: 20),
              // Left-aligned text
              const Text(
                "Your Grocery Store",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 106, 104, 104),
                ),
              ),
              const Text(
                "In Your Pocket",
                style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 106, 104, 104),
                ),
              ),
              Text(
                "Fresh groceries, tasty deals, and easy deliverys",
                style: TextStyle(
                  fontSize: 16,
                  color: const Color.fromARGB(255, 220, 41, 41),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
