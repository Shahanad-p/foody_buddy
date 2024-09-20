import 'package:flutter/material.dart';

class AboutUsWidget extends StatelessWidget {
  const AboutUsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About Us',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            _buildAboutUsItem(1, 'Our Vision',
                'At FoodyBuddy, we envision a world where delicious meals are just a tap away, bringing the joy of dining to every doorstep.'),
            _buildAboutUsItem(2, 'Comprehensive Reach',
                'FoodyBuddy connects you with both local gems and renowned distant restaurants, providing a broad spectrum of dining choices.'),
            _buildAboutUsItem(3, 'Intuitive Design',
                'Our app boasts an intuitive design, making it simple for users of all ages to navigate and place orders effortlessly.'),
            _buildAboutUsItem(4, 'Diverse Cuisine Options',
                'From traditional favorites to exotic cuisines, FoodyBuddy offers an extensive menu selection to satisfy diverse taste preferences.'),
            _buildAboutUsItem(5, 'Order Tracking',
                'Stay informed with our real-time order tracking feature, which keeps you updated on your meal’s journey from the kitchen to your door.'),
            _buildAboutUsItem(6, 'Exclusive Offers',
                'Benefit from special promotions and discounts available exclusively to FoodyBuddy users, enhancing your dining experience.'),
            _buildAboutUsItem(7, 'Custom Order Requests',
                'Tailor your meals to your liking with our customizable order options, ensuring your food is prepared just the way you want it.'),
            _buildAboutUsItem(8, 'Safe and Secure Payments',
                'Experience peace of mind with our secure payment gateways, offering multiple options for hassle-free transactions.'),
            _buildAboutUsItem(9, '24/7 Customer Support',
                'Our dedicated support team is ready to assist you around the clock, ensuring any concerns or questions are promptly addressed.'),
            _buildAboutUsItem(10, 'Community Focus',
                'FoodyBuddy supports local businesses and community initiatives, helping to strengthen local economies and foster community spirit.'),
            _buildAboutUsItem(11, 'Feedback and Ratings',
                'Share your dining experiences through our feedback system, helping us maintain high standards and improve our services.'),
            _buildAboutUsItem(12, 'Personalized Dining',
                'Receive recommendations tailored to your tastes and previous orders, making it easy to find new and exciting dishes.'),
            _buildAboutUsItem(13, 'Event Catering',
                'Simplify event planning with FoodyBuddy’s catering services, offering a range of options to suit any occasion, big or small.'),
            _buildAboutUsItem(14, 'Rewards Program',
                'Join our rewards program to earn points on every order, redeemable for exciting discounts and special offers.'),
            _buildAboutUsItem(15, 'Eco-Friendly Initiatives',
                'Committed to sustainability, FoodyBuddy promotes eco-friendly packaging and responsible practices to help protect our planet.'),
            SizedBox(height: 20),
            _buildAboutUsItem(16, 'App Version', 'Version 1.0.0'),
            _buildAboutUsItem(17, 'Contact Us',
                'For any inquiries or support, please contact us at: support@foodybuddy.com'),
            _buildAboutUsItem(18, 'Follow Us',
                'Stay updated with our latest news and offers by following us on social media.'),
          ],
        ),
      ),
    );
  }
}

Widget _buildAboutUsItem(int number, String title, String content) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$number. $title',
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
