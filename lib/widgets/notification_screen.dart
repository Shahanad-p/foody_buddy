import 'package:flutter/material.dart';

class NotificationWidget extends StatelessWidget {
  final String username;
  final String contactNumber;
  final DateTime orderDate;
  final List<Map<String, dynamic>> orderItems;

  const NotificationWidget({
    super.key,
    required this.username,
    required this.contactNumber,
    required this.orderDate,
    required this.orderItems,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notification',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 1,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Text(
              'Order Details',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
            SizedBox(height: 12),

            // Order Information
            _buildOrderInfo('Username:', username),
            _buildOrderInfo('Contact Number:', contactNumber),
            _buildOrderInfo(
                'Date:', orderDate.toLocal().toString().split(' ')[0]),
            _buildOrderInfo('Time:',
                orderDate.toLocal().toString().split(' ')[1].split('.')[0]),

            SizedBox(height: 12),

            // Ordered Items
            Text(
              'Ordered Items',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
            SizedBox(height: 8),
            Expanded(
              child: ListView.builder(
                itemCount: orderItems.length,
                itemBuilder: (context, index) {
                  final item = orderItems[index];
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 6.0),
                    elevation: 1,
                    child: ListTile(
                      contentPadding: EdgeInsets.all(12.0),
                      title: Text(
                        item['name'],
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'Quantity: ${item['quantity']} \nPrice: \$${item['price'].toStringAsFixed(2)}',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOrderInfo(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              label,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
