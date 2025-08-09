import 'package:flutter/material.dart';
import 'home.dart';

class QuizQuestion {
  final int level;
  final String question;
  final List<String> options;
  final int correctIndex;
  final String? imagePath;

  QuizQuestion({
    required this.level,
    required this.question,
    required this.options,
    required this.correctIndex,
    this.imagePath,
  });
}

// Example questions for level 1–4. You can add more later.
final List<QuizQuestion> allQuestions = [
  // Level 1 Questions
  QuizQuestion(
    level: 1,
    question: "In which city of Germany is the largest court?",
    options: ["Bremen", "Hamburg", "Frankfurt", "Leipzig"],
    correctIndex: 1,
    imagePath: 'images/ship.png',
  ),
  QuizQuestion(
    level: 1,
    question: "Capital of Bangladesh?",
    options: ["Chattogram", "Sylhet", "Dhaka", "Rajshahi"],
    correctIndex: 2,
  ),
  QuizQuestion(
    level: 1,
    question: "What is the chemical symbol for water?",
    options: ["O₂", "CO₂", "H₂O", "NaCl"],
    correctIndex: 2,
  ),
  QuizQuestion(
    level: 1,
    question: "How many continents are there on Earth?",
    options: ["5", "6", "7", "8"],
    correctIndex: 2,
  ),
  QuizQuestion(
    level: 1,
    question: "What color do you get when you mix red and white?",
    options: ["Pink", "Purple", "Orange", "Brown"],
    correctIndex: 0,
  ),
  QuizQuestion(
    level: 1,
    question: "Which animal is known as 'Man’s Best Friend'?",
    options: ["Cat", "Dog", "Horse", "Parrot"],
    correctIndex: 1,
  ),
  QuizQuestion(
    level: 1,
    question: "What shape has three sides?",
    options: ["Square", "Triangle", "Circle", "Rectangle"],
    correctIndex: 1,
  ),
  QuizQuestion(
    level: 1,
    question: "What do bees produce?",
    options: ["Milk", "Honey", "Bread", "Wine"],
    correctIndex: 1,
  ),
  QuizQuestion(
    level: 1,
    question: "Which planet is known as the Red Planet?",
    options: ["Venus", "Mars", "Jupiter", "Saturn"],
    correctIndex: 1,
  ),
  QuizQuestion(
    level: 1,
    question: "How many days are in a week?",
    options: ["5", "6", "7", "8"],
    correctIndex: 2,
  ),

  // Level 2 Questions
  QuizQuestion(
    level: 2,
    question: "Who developed Flutter?",
    options: ["Facebook", "Apple", "Google", "Microsoft"],
    correctIndex: 2,
  ),
  QuizQuestion(
    level: 2,
    question: "What is the hottest planet in our solar system?",
    options: ["Earth", "Venus", "Jupiter", "Mars"],
    correctIndex: 1,
  ),
  QuizQuestion(
    level: 2,
    question: "Which country is known as the Land of the Rising Sun?",
    options: ["China", "Japan", "South Korea", "Thailand"],
    correctIndex: 1,
  ),
  QuizQuestion(
    level: 2,
    question: "What is the capital city of Canada?",
    options: ["Toronto", "Vancouver", "Ottawa", "Montreal"],
    correctIndex: 2,
  ),
  QuizQuestion(
    level: 2,
    question: "Which element has atomic number 1?",
    options: ["Helium", "Oxygen", "Hydrogen", "Carbon"],
    correctIndex: 2,
  ),
  QuizQuestion(
    level: 2,
    question: "How many players are on a soccer team on the field?",
    options: ["9", "10", "11", "12"],
    correctIndex: 2,
  ),
  QuizQuestion(
    level: 2,
    question: "What year did World War II end?",
    options: ["1943", "1944", "1945", "1946"],
    correctIndex: 2,
  ),
  QuizQuestion(
    level: 2,
    question: "Who wrote the play 'Romeo and Juliet'?",
    options: [
      "Charles Dickens",
      "William Shakespeare",
      "Mark Twain",
      "Jane Austen",
    ],
    correctIndex: 1,
  ),
  QuizQuestion(
    level: 2,
    question: "Which sport uses a shuttlecock?",
    options: ["Tennis", "Badminton", "Squash", "Table Tennis"],
    correctIndex: 1,
  ),
  QuizQuestion(
    level: 2,
    question: "What currency is used in Japan?",
    options: ["Yen", "Won", "Dollar", "Euro"],
    correctIndex: 0,
  ),

  // Level 3 Questions
  QuizQuestion(
    level: 3,
    question: "Which ocean is the largest?",
    options: ["Atlantic", "Indian", "Pacific", "Arctic"],
    correctIndex: 2,
  ),
  QuizQuestion(
    level: 3,
    question: "Who painted the Mona Lisa?",
    options: [
      "Pablo Picasso",
      "Vincent van Gogh",
      "Leonardo da Vinci",
      "Claude Monet",
    ],
    correctIndex: 2,
  ),
  QuizQuestion(
    level: 3,
    question: "What is the powerhouse of the cell?",
    options: ["Nucleus", "Mitochondria", "Ribosome", "Chloroplast"],
    correctIndex: 1,
  ),
  QuizQuestion(
    level: 3,
    question: "Which novel begins with 'Call me Ishmael'?",
    options: ["Moby Dick", "Hamlet", "Pride and Prejudice", "1984"],
    correctIndex: 0,
  ),
  QuizQuestion(
    level: 3,
    question: "What is the term for a word that reads the same backward?",
    options: ["Synonym", "Antonym", "Palindrome", "Homophone"],
    correctIndex: 2,
  ),
  QuizQuestion(
    level: 3,
    question: "Who discovered penicillin?",
    options: [
      "Marie Curie",
      "Alexander Fleming",
      "Louis Pasteur",
      "Isaac Newton",
    ],
    correctIndex: 1,
  ),
  QuizQuestion(
    level: 3,
    question: "Which gas forms about 78% of Earth's atmosphere?",
    options: ["Oxygen", "Nitrogen", "Carbon Dioxide", "Helium"],
    correctIndex: 1,
  ),
  QuizQuestion(
    level: 3,
    question: "What is the capital of Australia?",
    options: ["Sydney", "Melbourne", "Canberra", "Perth"],
    correctIndex: 2,
  ),
  QuizQuestion(
    level: 3,
    question: "Which scientist proposed the theory of relativity?",
    options: [
      "Isaac Newton",
      "Albert Einstein",
      "Galileo Galilei",
      "Niels Bohr",
    ],
    correctIndex: 1,
  ),
  QuizQuestion(
    level: 3,
    question: "What year did the Titanic sink?",
    options: ["1910", "1912", "1914", "1916"],
    correctIndex: 1,
  ),

  // Level 4 Questions
  QuizQuestion(
    level: 4,
    question: "Which language is primarily spoken in Brazil?",
    options: ["Spanish", "Portuguese", "French", "English"],
    correctIndex: 1,
  ),
  QuizQuestion(
    level: 4,
    question: "What gas do plants absorb from the atmosphere?",
    options: ["Oxygen", "Carbon Dioxide", "Nitrogen", "Hydrogen"],
    correctIndex: 1,
  ),
  QuizQuestion(
    level: 4,
    question: "In computer science, what does 'API' stand for?",
    options: [
      "Application Programming Interface",
      "Automated Process Input",
      "Application Process Integration",
      "Advanced Programming Interface",
    ],
    correctIndex: 0,
  ),
  QuizQuestion(
    level: 4,
    question: "Which country hosted the 2016 Summer Olympics?",
    options: ["China", "Brazil", "UK", "Russia"],
    correctIndex: 1,
  ),
  QuizQuestion(
    level: 4,
    question: "What is the square root of 144?",
    options: ["10", "11", "12", "13"],
    correctIndex: 2,
  ),
  QuizQuestion(
    level: 4,
    question: "Who is known as the Father of Modern Physics?",
    options: [
      "Nikola Tesla",
      "Albert Einstein",
      "Galileo Galilei",
      "Max Planck",
    ],
    correctIndex: 1,
  ),
  QuizQuestion(
    level: 4,
    question: "Which element has the chemical symbol 'Au'?",
    options: ["Silver", "Gold", "Iron", "Mercury"],
    correctIndex: 1,
  ),
  QuizQuestion(
    level: 4,
    question: "What is the capital city of Canada?",
    options: ["Toronto", "Ottawa", "Vancouver", "Montreal"],
    correctIndex: 1,
  ),
  QuizQuestion(
    level: 4,
    question: "Which planet has the most moons?",
    options: ["Earth", "Mars", "Jupiter", "Saturn"],
    correctIndex: 2,
  ),
  QuizQuestion(
    level: 4,
    question: "In finance, what does 'ROI' stand for?",
    options: [
      "Rate of Interest",
      "Return on Investment",
      "Ratio of Income",
      "Revenue over Income",
    ],
    correctIndex: 1,
  ),
];

class QuestionPage extends StatefulWidget {
  final int level;
  const QuestionPage({super.key, required this.level});

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  late final List<QuizQuestion> questions;
  int current = 0;
  int? selectedIndex;
  int score = 0;
  bool completed = false;

  @override
  void initState() {
    super.initState();
    questions = allQuestions.where((q) => q.level == widget.level).toList();
  }

  void checkAnswer(int idx) {
    if (selectedIndex == null) {
      setState(() {
        selectedIndex = idx;
        if (idx == questions[current].correctIndex) score++;
      });
      Future.delayed(const Duration(milliseconds: 800), nextQuestion);
    }
  }

  void nextQuestion() {
    if (current + 1 < questions.length) {
      setState(() {
        current++;
        selectedIndex = null;
      });
    } else {
      setState(() => completed = true);
    }
  }

  void restart() {
    setState(() {
      current = 0;
      selectedIndex = null;
      score = 0;
      completed = false;
    });
  }

  void goHome() {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (_) => const Home()),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return completed ? _buildResult() : _buildQuiz();
  }

  Widget _buildQuiz() {
    final q = questions[current];
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
                const SizedBox(height: 30),
                Text(
                  "Level ${widget.level} • Question ${current + 1} of ${questions.length}",
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
                const SizedBox(height: 20),
                if (q.imagePath != null) Image.asset(q.imagePath!, height: 120),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    q.question,
                    style: const TextStyle(
                      color: Colors.yellow,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ...List.generate(q.options.length, (idx) {
                  final isCorrect = idx == q.correctIndex;
                  final isSelected = idx == selectedIndex;
                  Color bg = Colors.white;
                  Color textColor = const Color(0xFF5177EE);
                  if (selectedIndex != null) {
                    if (isCorrect) {
                      bg = Colors.green;
                      textColor = Colors.white;
                    } else if (isSelected) {
                      bg = Colors.red;
                      textColor = Colors.white;
                    }
                  }
                  return GestureDetector(
                    onTap: () => checkAnswer(idx),
                    child: Container(
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 6,
                      ),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: bg,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        q.options[idx],
                        style: TextStyle(fontSize: 18, color: textColor),
                      ),
                    ),
                  );
                }),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildResult() {
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
          child: Stack(
            children: [
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.emoji_events,
                      color: Colors.amber,
                      size: 100,
                    ),
                    const SizedBox(height: 24),
                    Text(
                      "Level ${widget.level} Complete!",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      "Score: $score / ${questions.length}",
                      style: const TextStyle(
                        color: Colors.yellow,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 40),
                    ElevatedButton(
                      onPressed: restart,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 21, 204, 67),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 16,
                        ),
                      ),
                      child: const Text("Replay Level"),
                    ),
                  ],
                ),
              ),

              // Close (X) button to go Home
              Positioned(
                top: 16,
                right: 16,
                child: GestureDetector(
                  onTap: goHome,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      shape: BoxShape.circle,
                    ),
                    padding: const EdgeInsets.all(8),
                    child: const Icon(Icons.close, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
