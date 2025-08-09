import 'dart:async';
import 'package:flutter/material.dart';
import 'home.dart'; // Adjust this import if your actual home screen file name differs

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(
        context,
      ).pushReplacement(MaterialPageRoute(builder: (_) => const Home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 24, 129, 80),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            // Example logo, replace with your own asset if needed:
            Icon(Icons.heat_pump_sharp, color: Colors.white, size: 96),
            SizedBox(height: 24),
            Text(
              "Welcome to Quiz Demo!",
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "Where Demo is not just a word, it's an experience!",
              style: TextStyle(color: Colors.white70, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
