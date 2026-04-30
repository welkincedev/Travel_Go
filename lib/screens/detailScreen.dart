import 'package:flutter/material.dart';
import '../placeModel.dart';

class DetailScreen extends StatelessWidget {
  final Place place;

  const DetailScreen({super.key, required this.place});

  Widget infoBox(IconData icon, String title, String subtitle) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Icon(icon, color: Colors.blue[800], size: 30),
            SizedBox(height: 5),
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Text(subtitle, style: TextStyle(fontSize: 12)),
          ],
        ),
      ),
    );
  }

  Widget activityChip(String text) {
    return Chip(label: Text(text));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue[800],
        title: Text(place.name),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border)),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              place.image,
              height: 220,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 15),
          Text(
            place.name,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Icon(Icons.location_on, color: Colors.blue[800]),
              Text(place.location),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(Icons.star, color: Colors.orange),
              Text(place.rating),
              SizedBox(width: 10),
              Text("${place.reviews} reviews"),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              infoBox(Icons.attach_money, place.price, "Entry Fee"),
              infoBox(Icons.straighten, place.distance, "Distance"),
              infoBox(Icons.category, place.category, "Category"),
            ],
          ),
          SizedBox(height: 20),
          Text(
            "About",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(place.description),
          SizedBox(height: 20),
          Text(
            "Activities",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Wrap(
            spacing: 8,
            children: place.activities
                .map((item) => activityChip(item))
                .toList(),
          ),
          SizedBox(height: 25),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue[800]),
            onPressed: () {},
            child: Text(
              "Book Now",
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
