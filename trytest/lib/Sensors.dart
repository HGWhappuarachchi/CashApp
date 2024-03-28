import 'package:flutter/material.dart';

class SensorsPage extends StatelessWidget {
  const SensorsPage({Key? key}) : super(key: key);

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
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _buildTile('Turbidity level of the water', 0.2),
                const SizedBox(height: 20),
                _buildTile('Temperature of the water', 0.4),
                const SizedBox(height: 20),
                _buildTile('PH level of the water', 0.6),
                const SizedBox(height: 20),
                _buildTile('TDS level in the water', 0.8),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTile(String title, double value) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blueAccent.withOpacity(0.4),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: const TextStyle(
                fontFamily: 'ProductSans',
                fontWeight: FontWeight.bold,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox(
                height: 20,
                child: LinearProgressIndicator(value: value),
              ),
            ),
          ],
        ),
      ),
    );
  }
}