import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.location_on,
          color: Colors.black,
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Location', style: TextStyle(color: Colors.black)),
            Row(
              children: [
                Text('Kannur,kerala,india',
                    style: TextStyle(color: Colors.black, fontSize: 16)),
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                ),
              ],
            ),
          ],
        ),
        actions: [
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/28c4a35c-3524-437c-b610-4e5d6acab049.jpg',
                height: 50,
                width: 50,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            TextFormField(
              controller: searchController,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.8),
                      borderSide: BorderSide(color: Colors.white)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.8),
                      borderSide: BorderSide(color: Colors.white)),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.grey[500])),
            ),
          ],
        ),
      ),
    );
  }
}
