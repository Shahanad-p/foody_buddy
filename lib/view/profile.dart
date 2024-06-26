import 'package:flutter/material.dart';
import 'package:foody_buddy/widgets/button.dart';
import 'package:foody_buddy/widgets/order_review_screen.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        // color: Colors.amber,
                        border: Border.all(
                            color: Color.fromARGB(255, 213, 208, 208)),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.asset(
                          'assets/28c4a35c-3524-437c-b610-4e5d6acab049.jpg',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 35,
                      child: Icon(
                        Icons.edit,
                        color: Colors.green,
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 35,
                      child: Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Text('shahanad',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              SizedBox(height: 5),
              Text('+91 9645347463',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 5),
              Text('shahanadp21@gmail.com',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 40),
              Column(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => OrderReviewWidget())),
                    child: MyTextWidget(
                        text1: 'Order Review', icon1: Icons.arrow_forward_ios),
                  ),
                  MyTextWidget(
                      text1: 'Address', icon1: Icons.arrow_forward_ios),
                  MyTextWidget(text1: 'Order', icon1: Icons.arrow_forward_ios),
                  MyTextWidget(
                      text1: 'Personal Information',
                      icon1: Icons.arrow_forward_ios),
                  MyTextWidget(
                      text1: 'Notification', icon1: Icons.arrow_forward_ios),
                  MyTextWidget(
                      text1: 'About Us', icon1: Icons.arrow_forward_ios),
                  MyTextWidget(
                      text1: 'Contact Us', icon1: Icons.arrow_forward_ios),
                ],
              ),
              SizedBox(height: 30),
              MyButtonWidget(onTap: () {}, text: 'Sign Out')
            ],
          ),
        ),
      ),
    );
  }
}

class MyTextWidget extends StatelessWidget {
  final String text1;
  final IconData icon1;
  const MyTextWidget({super.key, required this.text1, required this.icon1});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2.5),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Color.fromARGB(255, 207, 200, 200),
          )),
      height: 50,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          text1,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        Icon(
          icon1,
          size: 18,
        ),
      ]),
    );
  }
}
