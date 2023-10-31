import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String date = DateFormat('yMd').format(now);

    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('Flutter Demo'),
      ),
      body: Center(
          child: Column(
        children: [
          Image.asset(
            "assets/Bora1.jpeg",
            width: 200,
            height: 350,
          ),
          const Text(
            "Furkan Bora TÜZÜN",
            style: TextStyle(fontSize: 26, color: Colors.white),
          ),
          const Text(
            "Tobeto - Mobil Geliştirici - 1A",
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          Text(
            date,
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
        ],
      )),
    );
  }
}
