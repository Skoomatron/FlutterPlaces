
import 'package:flutter/material.dart';

import 'add_place_screen.dart';

class PlacesScreen extends StatelessWidget {
  const PlacesScreen({super.key});

  void changeScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => AddPlaceScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("Your Places"),
        actions: [
          IconButton(
              onPressed: () {
                changeScreen(context);
          }, 
              icon: Icon(Icons.add))
        ],
      ),
      body: Center(
        child: Container(
          child: Text("No Places Yet"),
        ),
      ),
    );
  }
}