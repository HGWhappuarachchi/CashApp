import 'package:flutter/material.dart';

class TemperaturePage extends StatelessWidget {
  const TemperaturePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TurtleSenuary', style: TextStyle(fontFamily: 'ProductSans', fontWeight: FontWeight.bold)),
        backgroundColor: Colors.blue[900],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.black, Colors.blue],
          ),
        ),
        child: Center(
          child: const Text(
            'This is the Temperature Page',
            style: TextStyle(fontSize: 24, fontFamily: 'ProductSans', fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}