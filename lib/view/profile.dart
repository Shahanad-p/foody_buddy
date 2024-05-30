import 'package:flutter/material.dart';

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
              Row(
                children: [
                  Text(''),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
