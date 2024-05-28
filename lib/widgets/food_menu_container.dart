import 'package:flutter/material.dart';

class FoodMenuContainer extends StatelessWidget {
  const FoodMenuContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 280,
      decoration: BoxDecoration(
          border: Border.all(color: Color.fromARGB(255, 229, 221, 221)),
          borderRadius: BorderRadius.circular(15)),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: 30,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              border: Border.all(color: Color.fromARGB(255, 229, 221, 221)),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    'assets/j6i5_gaq9_230518.jpg',
                    fit: BoxFit.contain,
                  ),
                ),
                Positioned(
                  left: 10,
                  top: 8,
                  child: Text(
                    'Burger',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
