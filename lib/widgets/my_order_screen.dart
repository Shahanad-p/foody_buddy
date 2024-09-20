import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class OrderDetailWidget extends StatelessWidget {
  final String username;
  final String contactNumber;
  final DateTime orderDate;
  final List<Map<String, dynamic>> orderItems;
  final LatLng location; // LatLng for the map
  final String trackingId;

  const OrderDetailWidget({
    super.key,
    required this.username,
    required this.contactNumber,
    required this.orderDate,
    required this.orderItems,
    required this.location,
    required this.trackingId,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Order Details',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 1,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 4,
                blurRadius: 6,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSectionTitle('User Information'),
                _buildInfoRow('Username', username),
                _buildInfoRow('Contact Number', contactNumber),
                SizedBox(height: 16),
                _buildSectionTitle('Order Date & Time'),
                _buildInfoRow(
                    'Date', orderDate.toLocal().toString().split(' ')[0]),
                _buildInfoRow('Time',
                    orderDate.toLocal().toString().split(' ')[1].split('.')[0]),
                SizedBox(height: 16),
                _buildSectionTitle('Ordered Items'),
                Container(
                  height: 200, // Adjust height as needed
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
                            item['name'] ?? 'Unknown Item',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            'Quantity: ${item['quantity'] ?? 0} \nPrice: \$${(item['price'] ?? 0.0).toStringAsFixed(2)}',
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 16),
                _buildSectionTitle('Tracking Information'),
                Container(
                  height: 200, // Adjust height as needed
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: FlutterMap(
                    options: MapOptions(
                      center: location,
                      zoom: 15.0,
                    ),
                    children: [
                      TileLayer(
                        urlTemplate:
                            'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                        subdomains: ['a', 'b', 'c'],
                      ),
                      // MarkerLayer(
                      //   markers: [
                      //     Marker(
                      //       point: location,
                      //       builder: (context) => Icon(
                      //         Icons.location_pin,
                      //         color: Colors.red,
                      //         size: 40,
                      //       ),
                      //     ),
                      //   ],
                      // ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                _buildInfoRow('Location',
                    'Lat: ${location.latitude}, Lng: ${location.longitude}'),
                _buildInfoRow('Tracking ID', trackingId),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Colors.green,
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        '$label: $value',
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
