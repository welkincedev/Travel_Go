import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  Widget statBox(IconData icon, String value, String label) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Icon(icon, color: Colors.blue[800]),
            Text(value, style: const TextStyle(fontWeight: FontWeight.bold)),
            Text(label, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }

  Widget settingTile(IconData icon, String title, String subtitle) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: const Icon(Icons.arrow_forward_ios, size: 15),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue[800],
        title: const Text("Profile",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          const SizedBox(height: 10),
          CircleAvatar(
            radius: 45,
            backgroundImage: const AssetImage("assets/images/profile.png"),
          ),
          const SizedBox(height: 10),
          const Center(
            child: Text(
              "John Traveler",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const Center(child: Text("john@traveler.com")),
          const SizedBox(height: 20),
          Row(
            children: [
              statBox(Icons.place, "24", "Places"),
              statBox(Icons.favorite, "12", "Favorites"),
              statBox(Icons.star, "4.8", "Rating"),
            ],
          ),
          const SizedBox(height: 15),
          const Text(
            "Settings",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          settingTile(Icons.person, "Edit Profile", "Update profile details"),
          settingTile(Icons.notifications, "Notifications", "Manage alerts"),
          settingTile(Icons.location_on, "Saved Places", "View saved places"),
          settingTile(Icons.download, "Downloads", "Offline guides"),
          const SizedBox(height: 15),
          const Text(
            "Support",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          settingTile(Icons.help_outline, "Help & Support", "Get help"),
          settingTile(Icons.info_outline, "About", "App version details"),
          const SizedBox(height: 15),
          OutlinedButton(
            onPressed: () {},
            child: const Text(
              "Logout",
              style: TextStyle(color: Colors.red),
            ),
          )
        ],
      ),
    );
  }
}