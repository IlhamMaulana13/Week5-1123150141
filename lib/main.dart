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
      title: "Judul Aplikasi",
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        backgroundColor: const Color.fromARGB(255, 255, 7, 7),
        actions: const [
          Icon(Icons.person, color: Colors.white),
          SizedBox(width: 10),
          Icon(Icons.account_tree, color: Colors.white),
          Icon(Icons.ac_unit, color: Colors.white),
          SizedBox(width: 20),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Container pertama (teks)
          Container(
            width: 100,
            height: 100,
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 30, left: 20),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.blue, Colors.yellow],
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: const Text(
              "Ini adalah text di dalam container",
              textAlign: TextAlign.center,
            ),
          ),

          // Container kedua (miring)
          Container(
            width: 170,
            height: 150,
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 30, left: 20),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.red, Colors.white],
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            transform: Matrix4.rotationZ(0.1),
            child: const Text(
              "Ini adalah text dengan container miring",
            ),
          ),

          // Container ketiga (gambar)
            Container(
              width: 160,
              height: 160,
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 30, left: 20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.purple, Colors.orange],
                ),
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.3), // ✅ diperbaiki
                    spreadRadius: 3,
                    blurRadius: 6,
                    offset: const Offset(3, 3),
                  ),
                ],
              ),
              transform: Matrix4.rotationZ(0.1),
              child: Image.asset(
                'assets/images/image.png', // pastikan path benar
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
        ],
      ),
    );
  }
}
