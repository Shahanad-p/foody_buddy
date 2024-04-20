import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
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
            ),
          )
        ],
      ),
    );
  }
}
