import 'package:flutter/material.dart';

// A StatefulWidget that represents a quiz.
class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

// State class for the Quiz widget.
class _QuizState extends State<Quiz> {
  // Stores the user's score.
  int _score = 0; 
  // Tracks the current question index.
  int _questionIndex = 0; 

  // List of questions and their details.
  List<Map<String, dynamic>> _questions = [
    {
      'question': 'What is the capital of France?',
      'answers': ['Paris', 'London', 'Berlin', 'Madrid'],
      'correctAnswer': 'Paris',
    },
    {
      'question': 'Which planet is closest to the Sun?',
      'answers': ['Mars', 'Venus', 'Jupiter', 'Mercury'],
      'correctAnswer': 'Mercury',
    },
    {
      'question': 'What is 2 + 2?',
      'answers': ['3', '4', '5', '6'],
      'correctAnswer': '4',
    },
  ];

  // Function to check the user's answer.
  void _checkAnswer(String answer) {
    String correctAnswer = _questions[_questionIndex]['correctAnswer'];
    if (answer == correctAnswer) {
      setState(() {
        _score++;
      });
    }
    // Move to the next question.
    _nextQuestion(); 
  }

  // Function to move to the next question or show quiz completion dialog.
  void _nextQuestion() {
    if (_questionIndex < _questions.length - 1) {
      setState(() {
        _questionIndex++;
      });
    } else {
      // Quiz completed, show a dialog.
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Quiz Completed'),
            content: Text('Your score: $_score'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  // Reset quiz for a new attempt.
                  _resetQuiz(); 
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  // Function to reset the quiz.
  void _resetQuiz() {
    setState(() {
      _score = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar title and Custom app bar color.
      appBar: AppBar(
        title: const Text('Quiz Tool'), 
        backgroundColor: Colors.blueGrey[900], 
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              // Display the current question.
              _questions[_questionIndex]['question'], 
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Column(
              children: List<Widget>.generate(
                _questions[_questionIndex]['answers'].length,
                (index) {
                  String answer = _questions[_questionIndex]['answers'][index];
                  return ElevatedButton(
                    onPressed: () {
                      // Check the selected answer.
                      _checkAnswer(answer); 
                    },
                    // Button style
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueGrey[900], 
                      onPrimary: Colors.white, 
                    ),
                    // Display answer text.
                    child: Text(answer), 
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() => runApp(QuizApp());

// Main app widget that runs the Quiz widget.
class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Quiz(), // Set the Quiz widget as the home screen.
    );
  }
}
