import 'package:flutter/material.dart';
import 'package:foody_buddy/view/button.dart';
import 'package:foody_buddy/widgets/textfields.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 20,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Register',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 30),
                  TextFieldsWidget(
                      controller: usernameController,
                      hintText: 'Enter your username',
                      obscureText: false),
                  SizedBox(height: 18),
                  TextFieldsWidget(
                      controller: passwordController,
                      hintText: 'Enter your password',
                      obscureText: true),
                  SizedBox(height: 18),
                  TextFieldsWidget(
                      controller: confirmPasswordController,
                      hintText: 'Enter your confirm password',
                      obscureText: true),
                  SizedBox(height: 30),
                  MyButtonWidget(onTap: () {}, text: 'SignUp'),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Alreday have an account?',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 31, 116, 185)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
