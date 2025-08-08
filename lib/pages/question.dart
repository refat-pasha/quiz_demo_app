import 'package:flutter/material.dart';

class QuestionPage extends StatelessWidget {
  const QuestionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Sample options and which one is correct (demo logic)
    final options = ["Bremen", "Hamburg", "Frankfurt", "Leipzig"];
    final correctOption = "Hamburg"; // Example: 2nd option is correct

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
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Top Row with Close, Timer, Heart
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
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
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 2),
                        ),
                        child: const Text(
                          '01',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white54),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          children: const [
                            Icon(Icons.favorite, color: Colors.white),
                            SizedBox(width: 10),
                            Text(
                              '3',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Image.asset('images/ship.png', height: 120),
                ),
                const SizedBox(height: 30),
                // Question Info
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Question 5 of 10",
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                // The Question
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "In which city of Germany is the largest court?",
                    style: const TextStyle(
                      color: Colors.yellow,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Options
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: options.length,
                  separatorBuilder: (_, __) => const SizedBox(height: 10),
                  itemBuilder: (context, idx) {
                    final isCorrect = options[idx] == correctOption;
                    return Container(
                      width: MediaQuery.of(context).size.width * 0.85,
                      padding: const EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 12,
                      ),
                      decoration: BoxDecoration(
                        color:
                            isCorrect ? const Color(0xFF5177EE) : Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border:
                            isCorrect
                                ? Border.all(color: Colors.yellow, width: 2)
                                : null,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              options[idx],
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight:
                                    isCorrect
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                                color:
                                    isCorrect
                                        ? Colors.white
                                        : const Color(0xFFEF729E),
                              ),
                            ),
                          ),
                          if (isCorrect)
                            const Icon(
                              Icons.done,
                              color: Colors.yellow,
                              size: 32,
                            ),
                        ],
                      ),
                    );
                  },
                ),
                const SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
