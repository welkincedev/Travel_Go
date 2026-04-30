import 'package:flutter/material.dart';
import '../placeCard.dart';
import '../placeModel.dart';

final List<Place> places = [
  Place(
    name: "Alappuzha",
    location: "Kerala, India",
    price: "\$22.0",
    rating: "4.6",
    reviews: "2800",
    distance: "35 km",
    category: "Backwaters",
    description:
    "Alappuzha, also known as Alleppey, is famous for its scenic backwaters, houseboat cruises, and serene lagoons. It is one of the top tourist destinations in Kerala.",
    activities: ["Boating", "SightSeeing", "Photography"],
    image: "assets/images/alappuzha.jpg",
  ),

  Place(
    name: "Kochi",
    location: "Kerala, India",
    price: "\$18.0",
    rating: "4.5",
    reviews: "3200",
    distance: "20 km",
    category: "City",
    description:
    "Kochi, also known as Cochin, is a vibrant port city known for its historic sites, Chinese fishing nets, and diverse culture blending modern and traditional elements.",
    activities: ["SightSeeing", "Shopping", "Photography"],
    image: "assets/images/Cochin.jpg",
  ),

  Place(
    name: "Munnar",
    location: "Kerala, India",
    price: "\$25.0",
    rating: "4.8",
    reviews: "4100",
    distance: "110 km",
    category: "Hill Station",
    description:
    "Munnar is a beautiful hill station known for its tea plantations, misty mountains, and cool climate. It is a perfect destination for nature lovers.",
    activities: ["Hiking", "SightSeeing", "Photography"],
    image: "assets/images/munnar.png",
  ),
  Place(
    name: "Eiffel Tower",
    location: "Paris, France",
    price: "\$27.5",
    rating: "4.7",
    reviews: "2500",
    distance: "60 km",
    category: "Historical",
    description:
        "The Eiffel Tower is a 330-meter tall lattice tower on the Champ de Mars in Paris, France. It is one of the most famous tourist attractions in the world.",
    activities: ["SightSeeing", "Photography", "Boating"],
    image: "assets/images/place.png",
  ),
  Place(
    name: "Taj Mahal",
    location: "Agra, India",
    price: "\$20.0",
    rating: "4.9",
    reviews: "4600",
    distance: "120 km",
    category: "Monument",
    description:
        "The Taj Mahal is a beautiful white marble monument and one of the most famous landmarks in India.",
    activities: ["SightSeeing", "Photography"],
    image: "assets/images/tajmahal.jpeg",
  ),
  Place(
    name: "Great Wall",
    location: "China",
    price: "\$15.0",
    rating: "4.6",
    reviews: "3000",
    distance: "80 km",
    category: "Historical",
    description:
        "The Great Wall of China is one of the greatest historical structures in the world.",
    activities: ["Hiking", "Photography"],
    image: "assets/images/greatwall.jpeg",
  ),
  Place(
    name: "Machu Picchu",
    location: "Cusco Region, Peru",
    price: "\$30.0",
    rating: "4.8",
    reviews: "3200",
    distance: "90 km",
    category: "Historical",
    description:
        "Machu Picchu is an ancient Incan city set high in the Andes Mountains in Peru. It is famous for its sophisticated dry-stone walls and panoramic views.",
    activities: ["Hiking", "Photography", "SightSeeing"],
    image: "assets/images/machupichu.jpeg",
  ),
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
          hintText: "Search places...",
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget chip(String text) {
    return Chip(label: Text(text), backgroundColor: Colors.blue[50]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 100,
        backgroundColor: Colors.blue[800],centerTitle: true,
        title:  Text(
          "Explore Places",
            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)
        ),
      ),
      body: ListView(
        children: [
          searchBox(),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 15),
            child: Wrap(
              spacing: 8,
              children: [
                chip("All"),
                chip("Historical"),
                chip("Monument"),
                chip("Architecture"),
              ],
            ),
          ),
           Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              "Popular Destinations",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          for (var place in places)
            PlaceCard(place: place),
        ],
      ),
    );
  }
}
