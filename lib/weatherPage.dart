import 'package:flutter/material.dart';

class WeatherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: WeatherData(),
    );
  }
}

class WeatherData extends StatefulWidget {
  @override
  _WeatherDataState createState() => _WeatherDataState();
}

class _WeatherDataState extends State<WeatherData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather'),
      ),
      body: Container(
        child: SafeArea(
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
