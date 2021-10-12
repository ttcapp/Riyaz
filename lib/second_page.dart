import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(" Cole Asci Second Page AAA", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.cyan,
      ),
    );
  }
}
