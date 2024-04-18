import 'package:flutter/material.dart';
import 'package:foody_buddy/view/login_screen.dart';
import 'package:foody_buddy/widgets/slider_widget.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  int currentIndex = 0;
  PageController? _controller;
  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 214, 94, 34),
      body: PageView.builder(
        controller: _controller,
        itemCount: sliderContents.length,
        onPageChanged: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  sliderContents[index].image!,
                  color: Colors.white70,
                  height: 200,
                ),
                SizedBox(height: 35),
                Text(
                  sliderContents[index].title!,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white),
                ),
                SizedBox(height: 25),
                Text(
                  sliderContents[index].description!,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(sliderContents.length,
                      (index) => buidDots(index, context)),
                ),
                SizedBox(height: 30),
                Container(
                  width: double.infinity,
                  height: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.green),
                  child: TextButton(
                    onPressed: () {
                      if (currentIndex == sliderContents.length - 1) {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => LoginsScreen(),
                          ),
                        );
                      }
                      _controller?.nextPage(
                          duration: Duration(milliseconds: 100),
                          curve: Curves.bounceIn);
                    },
                    child: Text(
                      currentIndex == sliderContents.length - 1
                          ? 'Continue'
                          : 'Next',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
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

  Container buidDots(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: EdgeInsets.only(left: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Theme.of(context).cardColor),
    );
  }
}
