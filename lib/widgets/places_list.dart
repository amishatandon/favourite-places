import 'package:favourite_places/models/place.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PlacesList extends StatelessWidget {
  const PlacesList({super.key, required this.places});
  final List<Place> places;

  @override
  Widget build(BuildContext context) {
    if (places.isEmpty) {
      return const Center(
        child: Text('No places adeed yet'),
      );
    }
    return ListView.builder(itemCount: places.length, itemBuilder: (ctx, index)=> ListTile(title: Text(places[index].title,)))
  }
}
