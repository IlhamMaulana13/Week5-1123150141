import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "judul aplikasi",
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
        Container(
      width: 100,
      height: 100,
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 30, left: 20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Colors.blue, Colors.yellow]
        ),

        borderRadius: BorderRadius.circular(10.0),

      ),
      child: Text("Ini adalah text didalam container"),

      
      ),
      Container(
      width: 100,
      height: 100,
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 30, left: 20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Colors.red, Colors.white]
        ),

        borderRadius: BorderRadius.circular(10.0),

      ),
      child: Text("Ini King Emyu"),

      
      ),
      ],
      ),

      
      
    );
  }
}