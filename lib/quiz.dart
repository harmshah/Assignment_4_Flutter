import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int _score = 0;
  int _questionIndex = 0;

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

  void _checkAnswer(String answer) {
    String correctAnswer = _questions[_questionIndex]['correctAnswer'];
    if (answer == correctAnswer) {
      setState(() {
        _score++;
      });
    }
    _nextQuestion();
  }

  void _nextQuestion() {
    if (_questionIndex < _questions.length - 1) {
      setState(() {
        _questionIndex++;
      });
    } else {
      // Quiz completed
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

  void _resetQuiz() {
    setState(() {
      _score = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Tool'),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
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
                      _checkAnswer(answer);
                    },style: ElevatedButton.styleFrom(
                    primary: Colors.blueGrey[900],
                    onPrimary: Colors.white,
                  ),
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

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Quiz(),
    );
  }
}


