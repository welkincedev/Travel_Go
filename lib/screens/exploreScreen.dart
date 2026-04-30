import 'package:flutter/material.dart';
import '../placeCard.dart';
import 'homeScreen.dart';


class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  Widget searchBox() {
    return Container(
      margin:  EdgeInsets.all(15),
      padding:  EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(15),
      ),
      child:  TextField(
        decoration: InputDecoration(
          icon: Icon(Icons.search),
          hintText: "Search places, cities...",
          border: InputBorder.none,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue[800],
        title:  Text("Explore Destinations",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
      ),
      body: ListView(
        children: [
          searchBox(),
          ...places.map((place) => PlaceCard(place: place)),
        ],
      ),
    );
  }
}