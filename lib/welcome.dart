import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome Page'),
        backgroundColor: Colors.blueGrey[900],
      ),      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          const SizedBox(height: 16),
          const Text(
            'Mobile Web Application(MDEV1005)',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Task: Assignment 4 - Flutter application',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Created by: Harmita Shah',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 16),
          Image.network(
            'https://images.rawpixel.com/image_800/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvbHIvam9iMjlhYmF0Y2g1LXM1OC13ZWxjb21lLTA0LmpwZw.jpg?s=zdXsw-_nYp0pGFluVo1qz-NECdYZfE_EQN0dNFMkd2A',
            height: 230, 
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20, ),
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              primary: Colors.blueGrey[900],
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/tool1',
              );
            },
            child: const Text('Stopwatch Tool'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20, ),
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              primary: Colors.blueGrey[900],
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/tool2',
              );
            },
            child: const Text('Quiz Tool'),
          ),

        ],
      ),
    ),
    );
  }
}
