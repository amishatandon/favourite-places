import 'package:favourite_places/providers/user_places.dart';
import 'package:favourite_places/screens/add_places.dart';
import 'package:favourite_places/widgets/places_list.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlacesScreens extends ConsumerWidget {
  const PlacesScreens({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userPLaces = ref.watch(userPlacesProvide);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Plces'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => const AddPlaceScreen(),
                ),
              );
            },
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: PlacesList(places: userPLaces),
      ),
    );
  }
}
