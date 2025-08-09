import 'package:flutter/material.dart';

// Question model
class QuizQuestion {
  final String question;
  final List<String> options;
  final int correctIndex;
  final String? imagePath;

  QuizQuestion({
    required this.question,
    required this.options,
    required this.correctIndex,
    this.imagePath,
  });
}

final List<QuizQuestion> quizQuestions = [
  QuizQuestion(
    question: "In which city of Germany is the largest court?",
    options: ["Bremen", "Hamburg", "Frankfurt", "Leipzig"],
    correctIndex: 1,
    imagePath: 'images/ship.png', // Put your image here if needed
  ),
  QuizQuestion(
    question: "Capital of Bangladesh?",
    options: ["Chattogram", "Sylhet", "Dhaka", "Rajshahi"],
    correctIndex: 2,
    imagePath: null,
  ),
  QuizQuestion(
    question: "Who developed Flutter?",
    options: ["Facebook", "Apple", "Google", "Microsoft"],
    correctIndex: 2,
    imagePath: null,
  ),
  QuizQuestion(
    question: "What is the hottest planet in our solar system?",
    options: ["Earth", "Venus", "Jupiter", "Mars"],
    correctIndex: 1,
    imagePath: null,
  ),
  QuizQuestion(
    question: "Which ocean is the largest?",
    options: ["Atlantic", "Indian", "Pacific", "Arctic"],
    correctIndex: 2,
    imagePath: null,
  ),
  QuizQuestion(
    question: "Who painted the Mona Lisa?",
    options: [
      "Pablo Picasso",
      "Vincent van Gogh",
      "Leonardo da Vinci",
      "Claude Monet",
    ],
    correctIndex: 2,
    imagePath: null,
  ),
  QuizQuestion(
    question: "Which language is primarily spoken in Brazil?",
    options: ["Spanish", "Portuguese", "French", "English"],
    correctIndex: 1,
    imagePath: null,
  ),
  QuizQuestion(
    question: "What gas do plants absorb from the atmosphere?",
    options: ["Oxygen", "Carbon Dioxide", "Nitrogen", "Hydrogen"],
    correctIndex: 1,
    imagePath: null,
  ),
  QuizQuestion(
    question: "What does HTTP stand for?",
    options: [
      "HyperText Transfer Protocol",
      "Home Tool Transfer Protocol",
      "Hyper Trainer Text Protocol",
      "HighText Transfer Protocol",
    ],
    correctIndex: 0,
    imagePath: null,
  ),
  QuizQuestion(
    question: "When did Bangladesh become independent?",
    options: ["1947", "1952", "1971", "1975"],
    correctIndex: 2,
    imagePath: null,
  ),
  // Add more questions here!
];

class QuestionPage extends StatefulWidget {
  const QuestionPage({Key? key}) : super(key: key);

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  int current = 0;
  int? selectedIndex;
  int score = 0;
  bool quizComplete = false;

  void checkAnswer(int idx) {
    if (selectedIndex == null) {
      setState(() {
        selectedIndex = idx;
        if (idx == quizQuestions[current].correctIndex) {
          score++;
        }
      });
      // Wait 1s then go to next if not last question
      Future.delayed(const Duration(milliseconds: 900), () {
        if (current == quizQuestions.length - 1) {
          setState(() {
            quizComplete = true;
          });
        } else {
          setState(() {
            current++;
            selectedIndex = null;
          });
        }
      });
    }
  }

  void restartQuiz() {
    setState(() {
      current = 0;
      selectedIndex = null;
      score = 0;
      quizComplete = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final q = quizQuestions[current];

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
          child:
              quizComplete ? buildResult(context) : buildQuestion(context, q),
        ),
      ),
    );
  }

  Widget buildResult(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.emoji_events, color: Colors.amber, size: 100),
          const SizedBox(height: 24),
          Text(
            "Quiz Complete!",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            "Your Score: $score / ${quizQuestions.length}",
            style: const TextStyle(
              color: Colors.yellow,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 40),
          ElevatedButton.icon(
            onPressed: restartQuiz,
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: const Color(0xFF5177EE),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            ),
            icon: const Icon(Icons.restart_alt),
            label: const Text("Try Again"),
          ),
        ],
      ),
    );
  }

  Widget buildQuestion(BuildContext context, QuizQuestion q) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Top Row
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
                  child: Text(
                    "${current + 1}".padLeft(2, '0'),
                    style: const TextStyle(
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
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (q.imagePath != null) ...[
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Image.asset(q.imagePath!, height: 120),
            ),
          ],
          const SizedBox(height: 30),
          // Question Info
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Question ${current + 1} of ${quizQuestions.length}",
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          const SizedBox(height: 10),
          // The Question
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              q.question,
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
            itemCount: q.options.length,
            separatorBuilder: (_, __) => const SizedBox(height: 10),
            itemBuilder: (context, idx) {
              final isSelected = selectedIndex == idx;
              final isCorrect = idx == q.correctIndex;
              // After answer selected, color green if correct, red if wrong
              Color tileColor = Colors.white;
              Color textColor = const Color(0xFF5177EE);
              FontWeight fontWeight = FontWeight.normal;
              Widget? trailing;

              if (selectedIndex != null) {
                if (isCorrect) {
                  tileColor = Colors.green;
                  textColor = Colors.white;
                  fontWeight = FontWeight.bold;
                  trailing = const Icon(Icons.check, color: Colors.white);
                } else if (isSelected) {
                  tileColor = Colors.red;
                  textColor = Colors.white;
                  fontWeight = FontWeight.bold;
                  trailing = const Icon(Icons.clear, color: Colors.white);
                }
              }

              return GestureDetector(
                onTap: selectedIndex == null ? () => checkAnswer(idx) : null,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 12,
                  ),
                  decoration: BoxDecoration(
                    color: tileColor,
                    borderRadius: BorderRadius.circular(15),
                    border:
                        selectedIndex == null && isSelected
                            ? Border.all(color: Colors.yellow, width: 2)
                            : null,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          q.options[idx],
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: fontWeight,
                            color: textColor,
                          ),
                        ),
                      ),
                      if (trailing != null) trailing,
                    ],
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}
