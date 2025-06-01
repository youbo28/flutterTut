import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// This widget is the root of your application.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  final String img = 'assets/movies.png'; // 🖼️ Image URL here

  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Flutter is Fun!'),
      ),
      body: IconButton(
        icon: Hero(
          tag: img,
          child: Image.asset(
            img,
            width: 100,
            height: 100,
          ),
        ),
        iconSize: 10,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => AboutScreen(),
            ),
          );
        },
      ),
    );
  }
}

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('About '),
      ),
      body: Hero(
        tag: 'assets/movies.png',
        child: Image.asset("assets/movies.png"),
      ),
    );
  }
}
