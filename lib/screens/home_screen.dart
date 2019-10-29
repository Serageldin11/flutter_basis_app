import 'package:flutter/material.dart';

import 'HavaneserScreen.dart';
import 'beagle_screen.dart';

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
      body: Center(
        child: Column(children: <Widget>[
          buildRaisedHunderasseButton(context, "Havaneser", HavaneserScreen()),
          buildRaisedHunderasseButton(context, "Beagle", BeagleScreen())
        ]),
      ),
    );
  }

  Widget buildRaisedHunderasseButton(BuildContext context, text, widget) {
    return RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => widget),
        );
      },
      child: Text(text),
    );
  }
}
