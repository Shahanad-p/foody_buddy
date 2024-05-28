import 'package:flutter/material.dart';
import 'package:foody_buddy/view/mobile_verification.dart';
import 'package:foody_buddy/view/register_screen.dart';
import 'package:foody_buddy/view/button.dart';
import 'package:foody_buddy/widgets/image_path.dart';
import 'package:foody_buddy/widgets/textfields.dart';

class LoginsScreen extends StatefulWidget {
  const LoginsScreen({super.key});

  @override
  State<LoginsScreen> createState() => _LoginsScreenState();
}

class _LoginsScreenState extends State<LoginsScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 30),
                  TextFieldsWidget(
                      controller: usernameController,
                      hintText: 'Enter the username',
                      obscureText: false),
                  SizedBox(height: 20),
                  TextFieldsWidget(
                      controller: passwordController,
                      hintText: 'Enter the password',
                      obscureText: true),
                  SizedBox(height: 8),
                  Row(children: [
                    GestureDetector(
                      onTap: () {},
                      child: Text('Forget Password?',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Color.fromARGB(255, 32, 122, 35))),
                    )
                  ]),
                  SizedBox(height: 30),
                  MyButtonWidget(onTap: () {}, text: 'Login'),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => RegisterScreen()));
                        },
                        child: Text(
                          'Don\'t have an account?',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 31, 116, 185)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 100),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10.10),
                          color: Colors.grey,
                          height: 1,
                        ),
                      ),
                      Text(
                        "Or connect with",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.only(left: 40, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        MyImagePath(
                            imagePath: 'assets/mobile-phone.png',
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          MobileVerification()));
                            }),
                        SizedBox(width: 20),
                        MyImagePath(
                            imagePath: 'assets/google.png', onTap: () {}),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
