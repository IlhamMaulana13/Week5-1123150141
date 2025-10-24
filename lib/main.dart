import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Title Aplikasi Latihan Container",
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ini title"),
        backgroundColor: Colors.blue,
        actions: const [
          Icon(Icons.person),
          SizedBox(width: 10),
          Icon(Icons.settings), // Ganti dengan ikon yang valid
        ],
      ),
      body: const Center(
        child: Text("Halo, ini halaman utama!"),
      ),
    );
  }
}
