import 'package:flutter/material.dart';
import 'dart:async';

// Stopwatch widget
class Stopwatch extends StatefulWidget {
  @override
  _StopwatchState createState() => _StopwatchState();
}

// State class for the Stopwatch widget
class _StopwatchState extends State<Stopwatch> {
  bool _isRunning = false; // Flag to track whether the timer is running
  int _secondsElapsed = 0; // Counter for elapsed seconds

  @override
  void initState() {
    super.initState();
  }

  // Method to start the timer using Timer.periodic
  void _startTimer() {
    Timer.periodic(Duration(seconds: 1), (Timer timer) {
      if (_isRunning) {
        setState(() {
          _secondsElapsed++;
        });
      }
    });
  }

  // Method to toggle the timer's running state
  void _toggleTimer() {
    setState(() {
      _isRunning = !_isRunning;
      if (_isRunning) {
        _startTimer();
      }
    });
  }

  // Method to reset the timer
  void _resetTimer() {
    setState(() {
      _secondsElapsed = 0;
      _isRunning = false;
    });
  }

  // Method to format time in MM:SS format
  String _formatTime(int seconds) {
    int minutes = (seconds ~/ 60);
    int remainingSeconds = seconds % 60;
    return '$minutes:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stopwatch Tool'), // App bar title
        backgroundColor: Colors.blueGrey[900], // App bar background color
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _formatTime(_secondsElapsed), // Display formatted time
              style: TextStyle(fontSize: 48), // Text style
            ),
            SizedBox(height: 20), // Spacer
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: _toggleTimer, // Start/Pause button
                  child: Text(_isRunning ? 'Pause' : 'Start'), // Button text
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black54, // Button background color
                    onPrimary: Colors.white, // Button text color
                  ),
                ),
                SizedBox(width: 20), // Spacer
                ElevatedButton(
                  onPressed: _resetTimer, // Reset button
                  child: Text('Reset'), // Button text
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black54, // Button background color
                    onPrimary: Colors.white, // Button text color
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Entry point for the application
void main() => runApp(MyApp());

// MyApp widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stopwatch(), // Set the Stopwatch widget as the home screen
    );
  }
}
