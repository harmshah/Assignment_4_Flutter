import 'package:flutter/material.dart';

// Welcome widget
class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

// State class for the Welcome widget
class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome Page'), // App bar title
        backgroundColor: Colors.blueGrey[900], // App bar background color
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 16), // Spacer
            const Text(
              'Mobile Web Application(MDEV1005)', // Title 1
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16), // Spacer
            const Text(
              'Task: Assignment 4 - Flutter application', // Title 2
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16), // Spacer
            const Text(
              'Created by: Harmita Shah', // Title 3
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16), // Spacer
            Image.network(
              'https://images.rawpixel.com/image_800/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvbHIvam9iMjlhYmF0Y2g1LXM1OC13ZWxjb21lLTA0LmpwZw.jpg?s=zdXsw-_nYp0pGFluVo1qz-NECdYZfE_EQN0dNFMkd2A',
              height: 250, // Image height
            ),
            const SizedBox(height: 20), // Spacer
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                primary: Colors.blueGrey[900], // Button background color
                onPrimary: Colors.white, // Button text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/tool1', // Navigate to '/tool1'
                );
              },
              child: const Text('Stopwatch Tool'), // Button text
            ),
            const SizedBox(height: 20), // Spacer
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                primary: Colors.blueGrey[900], // Button background color
                onPrimary: Colors.white, // Button text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/tool2', // Navigate to '/tool2'
                );
              },
              child: const Text('Quiz Tool'), // Button text
            ),
          ],
        ),
      ),
    );
  }
}
