import 'package:flutter/material.dart';

class FoodMenuSizedBox extends StatelessWidget {
  const FoodMenuSizedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      // color: Colors.amber,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: 30,
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Container(
              color: Colors.blue,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      'assets/j6i5_gaq9_230518.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: 10,
                    top: 8,
                    child: Text(
                      'Burger',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
