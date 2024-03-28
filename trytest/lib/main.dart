import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Sensors.dart';
import 'PHLevel.dart';
import 'TDSLevel.dart';
import 'Temperature.dart';
import 'TurbidityLevel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: 'TurtleSenuary'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: TextStyle(fontFamily: 'ProductSans', fontWeight: FontWeight.bold)),
        backgroundColor: Colors.blue[900],
      ),
      // Use a BoxDecoration with a LinearGradient for the shaded background
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.black, Colors.blue],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 50), // Increase the space at the top
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(child: _buildButton('PH Level', Icons.phonelink_lock, PHLevelPage())),
                  Expanded(child: _buildButton('Turbidity Level', Icons.blur_on, TurbidityLevelPage())),
                ],
              ),
              const SizedBox(height: 50), // Increase the space between the rows
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(child: _buildButton('TDS Level', Icons.trending_up, TDSLevelPage())),
                  Expanded(child: _buildButton('Temperature', Icons.thermostat, TemperaturePage())),
                ],
              ),
              const SizedBox(height: 50), // Increase the space at the bottom
              _buildButton('Check Current Status', Icons.sensor_door, SensorsPage()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButton(String title, IconData icon, Widget page) {
    return Padding(
      padding: const EdgeInsets.all(5.0), // Reduce the padding
      child: Opacity(
        opacity: 0.5, // Reduce the opacity of the buttons
        child: ElevatedButton.icon(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => page),
            );
          },
          icon: Icon(icon),
          label: Text(title, style: TextStyle(fontFamily: 'ProductSans', fontWeight: FontWeight.bold, color: Colors.white)), // Change the font and make the text bold
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15), // Make the button thicker
          ),
        ),
      ),
    );
  }
}