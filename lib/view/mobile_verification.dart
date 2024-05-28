import 'package:flutter/material.dart';
import 'package:foody_buddy/view/otp_screen.dart';
import 'package:foody_buddy/view/button.dart';

class MobileVerification extends StatefulWidget {
  const MobileVerification({super.key});

  @override
  State<MobileVerification> createState() => _MobileVerificationState();
}

class _MobileVerificationState extends State<MobileVerification> {
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Mobile Verification',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                ),
                SizedBox(height: 30),
                TextFormField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.8),
                          borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.8),
                          borderSide: BorderSide(color: Colors.white)),
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      hintText: 'Enter the mobile number',
                      hintStyle: TextStyle(color: Colors.grey[500])),
                ),
                SizedBox(height: 20),
                MyButtonWidget(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => OtpScreen()));
                    },
                    text: 'Get OTP'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
