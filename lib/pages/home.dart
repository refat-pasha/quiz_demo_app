import 'package:flutter/material.dart';
import 'continuing.dart';
import 'question.dart';
import 'profile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _openLevel(int level) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => QuestionPage(level: level)),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cardWidth = MediaQuery.of(context).size.width * 0.85;

    Widget buildLevelCard({
      required int level,
      required String title,
      required Color startColor,
      required Color midColor,
      required Color endColor,
      required IconData icon,
      required String imageAsset,
      VoidCallback? onTap,
    }) {
      return GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: onTap,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: cardWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    colors: [startColor, midColor, endColor],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white54),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.all(5),
                          child: Icon(icon, color: Colors.white),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'Level $level',
                          style: const TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 0,
              top: -20,
              child: Image.asset(imageAsset, width: 90, height: 90),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50, left: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Icons
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  _iconButton(Icons.favorite_border),
                  const SizedBox(width: 20),
                  _iconButton(
                    Icons.person,
                    onTap:
                        () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (_) => const ProfilePage(
                                  userName: 'Refat Pasha',
                                  userEmail: 'refat.pasha@example.com',
                                  avatarUrl: 'https://i.pravatar.cc/150?img=3',
                                ),
                          ),
                        ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                "Let's play",
                style: TextStyle(
                  color: Color(0xFFF35E7A),
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                "Be the first",
                style: TextStyle(
                  color: Colors.black38,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 30),

              // Level 1
              buildLevelCard(
                level: 1,
                title: 'Travel Newb',
                startColor: const Color(0xFFEF729E),
                midColor: const Color(0xFFEC7C86),
                endColor: const Color(0xFFED896D),
                icon: Icons.done,
                imageAsset: 'images/travel-bag.png',
                onTap: () => _openLevel(1),
              ),
              const SizedBox(height: 30),

              // Level 2
              buildLevelCard(
                level: 2,
                title: 'Continuing',
                startColor: const Color(0xFF4446C7),
                midColor: const Color(0xFF37469E),
                endColor: const Color(0xFF7072C5),
                icon: Icons.play_arrow,
                imageAsset: 'images/airballon.png',
                onTap:
                    () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => ContinuePage()),
                    ),
              ),
              const SizedBox(height: 30),

              // Level 3
              buildLevelCard(
                level: 3,
                title: 'Experienced',
                startColor: const Color(0xFF54CF79),
                midColor: const Color(0xFF33B469),
                endColor: const Color(0xFF13A744),
                icon: Icons.lock,
                imageAsset: 'images/destination.png',
                onTap: () => _openLevel(3),
              ),
              const SizedBox(height: 30),

              // Level 4
              buildLevelCard(
                level: 4,
                title: 'Question',
                startColor: const Color(0xFF9540AF),
                midColor: const Color(0xFF8B1D99),
                endColor: const Color(0xFF8E09A0),
                icon: Icons.next_plan,
                imageAsset: 'images/airballon.png',
                onTap: () => _openLevel(4),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  Widget _iconButton(IconData icon, {VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black38),
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.all(8),
        child: Icon(icon, color: Colors.blue),
      ),
    );
  }
}
