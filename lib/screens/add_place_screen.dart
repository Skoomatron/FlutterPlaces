import 'package:flutter/material.dart';

class AddPlaceScreen extends StatelessWidget {
  const AddPlaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add New Place"),
      ),
      body: Column(
        children: [
          TextFormField(
            maxLength: 50,
          ),
          ElevatedButton(
              onPressed: (){print("pressed");},
              child: Row(
                children: [
                  Icon(Icons.add),
                  Text("Add Place")
                ],
              ),)
        ],
      ),
    );
  }
}