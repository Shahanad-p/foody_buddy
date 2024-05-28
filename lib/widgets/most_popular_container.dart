import 'package:flutter/material.dart';

class MostPopularContainerWidget extends StatelessWidget {
  final int index;
  const MostPopularContainerWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 205, 201, 201)),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      height: 150,
      width: 360,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 135,
            width: 125,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              border: Border.all(color: Color.fromARGB(255, 229, 221, 221)),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                'assets/j6i5_gaq9_230518.jpg',
                fit: BoxFit.contain,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Double Patty Burger ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.favorite_border_outlined)
                ],
              ),
              Text(
                '\$22.99',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text(
                '10 min - 1.5 km',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Row(
                children: [
                  Text(
                    '⭐⭐⭐⭐⭐ 4.7',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(width: 50),
                  Icon(Icons.add_box)
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MostPopularContainerList extends StatelessWidget {
  const MostPopularContainerList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(10, (index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: MostPopularContainerWidget(index: index),
          );
        }),
      ),
    );
  }
}
