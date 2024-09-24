import 'package:flutter/material.dart';

class PersonalInfoWidget extends StatelessWidget {
  // Mock data representing saved user information
  final Map<String, String> userInfo = {
    'Name': 'John Doe',
    'Contact': '+1 234 567 890',
    'Street Address': '123, Main Street',
    'Area': 'Downtown',
    'Landmark': 'Near Central Park',
    'City': 'New York',
    'Pincode': '10001',
    'Country': 'United States',
  };

  PersonalInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Personal Info',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 4,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Name Section
            PersonalInfoCard(
              icon: Icons.person,
              label: 'Name',
              value: userInfo['Name'] ?? '',
              backgroundColor: Colors.purple[50],
            ),
            // Contact Section
            PersonalInfoCard(
              icon: Icons.phone,
              label: 'Contact',
              value: userInfo['Contact'] ?? '',
              backgroundColor: Colors.green[50],
            ),
            // Street Address Section
            PersonalInfoCard(
              icon: Icons.home,
              label: 'Street Address',
              value: userInfo['Street Address'] ?? '',
              backgroundColor: Colors.blue[50],
            ),
            // Area Section
            PersonalInfoCard(
              icon: Icons.location_city,
              label: 'Area',
              value: userInfo['Area'] ?? '',
              backgroundColor: Colors.orange[50],
            ),
            // Landmark Section
            PersonalInfoCard(
              icon: Icons.place,
              label: 'Landmark',
              value: userInfo['Landmark'] ?? '',
              backgroundColor: Colors.yellow[50],
            ),
            // City Section
            PersonalInfoCard(
              icon: Icons.location_city,
              label: 'City',
              value: userInfo['City'] ?? '',
              backgroundColor: Colors.red[50],
            ),
            // Pincode Section
            PersonalInfoCard(
              icon: Icons.pin_drop,
              label: 'Pincode',
              value: userInfo['Pincode'] ?? '',
              backgroundColor: Colors.teal[50],
            ),
            // Country Section
            PersonalInfoCard(
              icon: Icons.flag,
              label: 'Country',
              value: userInfo['Country'] ?? '',
              backgroundColor: Colors.pink[50],
            ),
          ],
        ),
      ),
    );
  }
}

// A custom widget to display a card with label, value, and an icon
class PersonalInfoCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final Color? backgroundColor;

  const PersonalInfoCard({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.deepPurple,
          child: Icon(icon, color: Colors.white),
        ),
        title: Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        subtitle: Text(
          value,
          style: TextStyle(
            fontSize: 14,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}
