import 'package:flutter/material.dart';
import 'package:foody_buddy/controller/bottom_provider.dart';
import 'package:foody_buddy/view/slider_screens.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BottomProvider())
      ],
      child: MaterialApp(
        home: SliderScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
