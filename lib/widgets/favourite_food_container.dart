import 'package:flutter/material.dart';

class FavFoodContainerWidget extends StatelessWidget {
  const FavFoodContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          childAspectRatio: 0.7, // Adjusted aspect ratio to make items taller
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
                              fontWeight: FontWeight.bold, fontSize: 16),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                        SizedBox(height: 4),
                        Text(
                          '\$22.99',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                        SizedBox(height: 2),
                        Text(
                          '10 min - 1.5 km',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12),
                        ),
                        SizedBox(height: 2),
                        Row(
                          children: [
                            Text(
                              '⭐⭐⭐⭐⭐ 4.7',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
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
    );
  }
}
