import 'package:flutter/material.dart';
import 'continuing.dart';
import 'question.dart';
import 'profile.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _openLevel(int level) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => QuestionPage(level: level)));
  }

  @override
  Widget build(BuildContext context) {
    final cardWidth = MediaQuery.of(context).size.width * 0.85;
    Widget buildCard(int level, String title, List<Color> colors, IconData icon, String img) {
      return GestureDetector(
        onTap: () => _openLevel(level),
        child: Stack(clipBehavior: Clip.none, children: [
          Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: cardWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(colors: colors, begin: Alignment.topLeft, end: Alignment.bottomRight),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Row(children: [
                  Container(
                    decoration: BoxDecoration(border: Border.all(color: Colors.white54), borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(5),
                    child: Icon(icon, color: Colors.white),
                  ),
                  const SizedBox(width: 8),
                  Text('Level $level', style: const TextStyle(color: Colors.white70, fontWeight: FontWeight.bold, fontSize: 20)),
                ]),
                const SizedBox(height: 5),
                Text(title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20)),
              ]),
            ),
          ),
          Positioned(right: 0, top: -20, child: Image.asset(img, width: 90, height: 90)),
        ]),
      );
    }

    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50, left: 20),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              _icon(Icons.favorite_border, null),
              const SizedBox(width: 20),
              _icon(Icons.person, () => Navigator.push(context, MaterialPageRoute(builder: (_) => const ProfilePage()))),
            ]),
            const SizedBox(height: 10),
            const Text("Let's play", style: TextStyle(color: Color(0xFFF35E7A), fontSize: 28, fontWeight: FontWeight.bold)),
            const SizedBox(height: 5),
            const Text("Be the first", style: TextStyle(color: Colors.black38, fontSize: 20, fontWeight: FontWeight.w500)),
            const SizedBox(height: 30),
            buildCard(1, 'Travel Newb', [Color(0xFFEF729E), Color(0xFFEC7C86), Color(0xFFED896D)], Icons.done, 'images/travel-bag.png'),
            const SizedBox(height: 30),
            buildCard(2, 'Continuing', [Color(0xFF4446C7), Color(0xFF37469E), Color(0xFF7072C5)], Icons.play_arrow, 'images/airballon.png'),
            const SizedBox(height: 30),
            buildCard(3, 'Experienced', [Color(0xFF54CF79), Color(0xFF33B469), Color(0xFF13A744)], Icons.lock, 'images/destination.png'),
            const SizedBox(height: 30),
            buildCard(4, 'Question', [Color(0xFF9540AF), Color(0xFF8B1D99), Color(0xFF8E09A0)], Icons.next_plan, 'images/airballon.png'),
            const SizedBox(height: 30),
          ]),
        ),
      ),
    );
  }

  Widget _icon(IconData icon, VoidCallback? onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.black38), borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.all(8),
        child: Icon(icon, color: Colors.blue),
      ),
    );
  }
}
