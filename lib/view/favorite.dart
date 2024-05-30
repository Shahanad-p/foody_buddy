import 'package:flutter/material.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
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
                Text('Kannur, Kerala, India',
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
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              TextFormField(
                controller: searchController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.8),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.8),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.grey[500]),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 700, // Increased height
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromARGB(255, 229, 221, 221),
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 15,
                    childAspectRatio:
                        0.7, // Adjusted aspect ratio to make items taller
                  ),
                  itemCount: 30,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromARGB(255, 229, 221, 221),
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Stack(
                        // alignment: Alignment.center,
                        children: [
                          Positioned(
                            top: 10,
                            left: 20,
                            right: 20,
                            child: Container(
                              height: 110, // Adjusted height
                              decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                  'assets/j6i5_gaq9_230518.jpg',
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 3,
                            right: 3,
                            child: Icon(Icons.favorite_outline),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 10,
                            right: 10,
                            child: ClipRect(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Double Patty Burger',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    '\$22.99',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  ),
                                  SizedBox(height: 2),
                                  Text(
                                    '10 min - 1.5 km',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  ),
                                  SizedBox(height: 2),
                                  Row(
                                    children: [
                                      Text(
                                        '⭐⭐⭐⭐⭐ 4.7',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                      SizedBox(width: 28),
                                      Icon(Icons.add_box, size: 20)
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
