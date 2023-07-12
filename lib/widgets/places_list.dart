import 'package:favorite_places/screens/place_details_screen.dart';
import 'package:flutter/material.dart';

import '../models/place.dart';

class PlacesList extends StatelessWidget {
  const PlacesList({super.key, required this.places});

  final List<Place> places;

  @override
  Widget build(BuildContext context) {
    if (places.isEmpty) {
      return Center(
        child: Text(
            "No Places Added",
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Theme.of(context).colorScheme.onBackground
          ),
        ),
      );
    }
    return ListView.builder(
        itemCount: places.length,
        itemBuilder: (ctx, index) => ListTile(
          title: Text(
            places[index].title,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: Theme.of(context).colorScheme.onBackground
            ),
          ),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => PlaceDetailScreen(place: places[index])));
          },
        ),
    );
  }
}