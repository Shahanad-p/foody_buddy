import 'package:flutter/material.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Terms & Condions',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSection('1. Acceptance of Terms',
                  'By using the FoodyBuddy app, you agree to comply with and be bound by these Terms and Conditions. If you do not agree with any part of these terms, please do not use the app.'),
              _buildSection('2. Changes to Terms',
                  'FoodyBuddy reserves the right to modify or update these Terms and Conditions at any time. Changes will be effective immediately upon posting. Your continued use of the app constitutes acceptance of the revised terms.'),
              _buildSection('3. Account Registration',
                  'To use certain features of the app, you may be required to create an account. You agree to provide accurate and complete information during the registration process and to update such information to keep it accurate and complete.'),
              _buildSection('4. User Responsibilities',
                  'You are responsible for maintaining the confidentiality of your account credentials and for all activities that occur under your account. Notify FoodyBuddy immediately of any unauthorized use of your account.'),
              _buildSection('5. Orders and Payments',
                  'Orders placed through the FoodyBuddy app are subject to availability. FoodyBuddy does not guarantee the availability of any product or service. Payments are processed through secure payment gateways, and you are responsible for ensuring that your payment information is accurate.'),
              _buildSection('6. Delivery and Cancellations',
                  'FoodyBuddy will make reasonable efforts to ensure timely delivery of orders. However, we are not liable for any delays or failures in delivery. Orders may be canceled within a specific timeframe as outlined in our cancellation policy.'),
              _buildSection('7. Refunds',
                  'Refunds are subject to FoodyBuddy’s refund policy. If you are dissatisfied with your order or encounter issues, please contact our customer support team for assistance.'),
              _buildSection('8. Content and Intellectual Property',
                  'All content, including text, images, and logos, provided on the FoodyBuddy app is the property of FoodyBuddy or its licensors and is protected by intellectual property laws. You may not use, reproduce, or distribute any content without explicit permission.'),
              _buildSection('9. Prohibited Activities',
                  'You agree not to use the app for any unlawful or prohibited activities, including but not limited to: Engaging in fraudulent activities. Posting or transmitting harmful, offensive, or illegal content. Interfering with the app’s functionality or security.'),
              _buildSection('10. Third-Party Links',
                  'The app may contain links to third-party websites or services. FoodyBuddy is not responsible for the content or practices of any third-party sites. Accessing third-party links is at your own risk.'),
              _buildSection('11. Limitation of Liability',
                  'FoodyBuddy is not liable for any indirect, incidental, or consequential damages arising from the use or inability to use the app. Our total liability is limited to the amount paid by you for the specific service or product that caused the damage.'),
              _buildSection('12. Indemnification',
                  'You agree to indemnify and hold FoodyBuddy, its affiliates, and their respective officers, directors, employees, and agents harmless from any claims, liabilities, damages, losses, or expenses arising from your use of the app or violation of these terms.'),
              _buildSection('13. Privacy Policy',
                  'Your use of the app is also governed by our Privacy Policy, which outlines how we collect, use, and protect your personal information.'),
              _buildSection('14. Governing Law',
                  'These Terms and Conditions are governed by and construed in accordance with the laws of the jurisdiction in which FoodyBuddy operates. Any disputes arising from these terms will be subject to the exclusive jurisdiction of the courts in that jurisdiction.'),
              _buildSection('15. Contact Us',
                  'If you have any questions about these Terms and Conditions, please contact us at support@foodybuddy.com.'),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildSection(String title, String content) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 4),
        Text(
          content,
          style: TextStyle(fontSize: 16),
        ),
      ],
    ),
  );
}
