import 'package:flutter/material.dart';
import '../placeCard.dart';
import 'homeScreen.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final favoritePlaces = places.take(2).toList();

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue[800],
        title: const Text("Favorite Places",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 10),
          ...favoritePlaces.map((place) => PlaceCard(place: place)),
        ],
      ),
    );
  }
}