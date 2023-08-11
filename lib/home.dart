import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key); 
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'), 
        backgroundColor: Colors.blueGrey[900], 
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blueGrey[900], 
                onPrimary: Colors.white, 
                textStyle: const TextStyle(fontSize: 20, ), 
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), 
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/welcome',
                );
              },
              child: const Text('Welcome!'),
            ),
          ],
        ),
      ),
    );
  }
}
