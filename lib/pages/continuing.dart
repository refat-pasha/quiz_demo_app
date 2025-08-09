import 'package:flutter/material.dart';
import 'package:toodoo_app/pages/home.dart';

class ContinuePage extends StatelessWidget {
  const ContinuePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF348ef2), Color(0xFF4183F1), Color(0xFF5177EE)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Close icon in top left
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 20),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white54),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: const EdgeInsets.all(8),
                          child: const Icon(Icons.close, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 22),
                  Image.asset('images/airballon_color.png', height: 120),
                  const SizedBox(height: 12),
                  const Text(
                    'Level 2',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Continue',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: const Text(
                      'Do you feel confident? Here you will challenge one of our most difficult travel questions!',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 24),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => const Home(),
                      ));
                    },
                    child: Material(
                      elevation: 7,                   
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.75,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          'Continue',
                          style: TextStyle(
                            color: Color(0xFF5177EE),
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
