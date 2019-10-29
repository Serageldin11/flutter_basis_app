import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Icon(Icons.airline_seat_legroom_extra),
        title: Text("Home"),
        actions: <Widget>[
          Icon(Icons.local_printshop),
        ],
      ),
    );
  }
}
