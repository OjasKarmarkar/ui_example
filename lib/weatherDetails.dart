import 'package:flutter/material.dart';

import 'models.dart';

class Details extends StatefulWidget {
  final WeatherResponse weatherResponse;
  const Details({Key? key, required this.weatherResponse}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          widget.weatherResponse.cityName,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(children: [
        ListTile(
          title: Text(
            '${widget.weatherResponse.tempInfo.temperature.toString()} F',
            style: TextStyle(fontSize: 18),
          ),
          leading: Icon(
            Icons.cloud_circle,
            size: 30,
          ),
        ),
        ListTile(
          title: Text(
            widget.weatherResponse.weatherInfo.description.toString(),
            style: TextStyle(fontSize: 18),
          ),
          leading: Icon(
            Icons.description,
            size: 30,
          ),
        ),
      ]),
    );
  }
}
