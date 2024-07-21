import 'package:flutter/material.dart';
import 'package:foody_buddy/widgets/address_textfield_widget.dart';
import 'package:foody_buddy/widgets/button.dart';

class AddressWidget extends StatefulWidget {
  const AddressWidget({super.key});

  @override
  State<AddressWidget> createState() => _AddressWidgetState();
}

enum AddresType {
  home,
  work,
  other,
}

class _AddressWidgetState extends State<AddressWidget> {
  var myType = AddresType.home;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Address',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: ListView(children: [
          AddressTextfieldWidget(labelText: 'First Name'),
          AddressTextfieldWidget(labelText: 'Last Name'),
          AddressTextfieldWidget(labelText: 'Contact Number'),
          AddressTextfieldWidget(labelText: 'Street Addess'),
          AddressTextfieldWidget(labelText: 'Area'),
          AddressTextfieldWidget(labelText: 'Landmark'),
          AddressTextfieldWidget(labelText: 'City'),
          AddressTextfieldWidget(labelText: 'Pincode'),
          AddressTextfieldWidget(labelText: 'Country'),
          AddressTextfieldWidget(labelText: 'Delivery Instructions'),
          SizedBox(height: 10),
          ListTile(title: Text('Address Type*')),
          RadioListTile(
            value: AddresType.home,
            groupValue: myType,
            title: Text('Home'),
            onChanged: (AddresType? value) {
              setState(() {
                myType = value!;
              });
            },
            secondary: Icon(
              Icons.home,
              color: Colors.green,
            ),
          ),
          RadioListTile(
            value: AddresType.work,
            groupValue: myType,
            title: Text('Office'),
            onChanged: (AddresType? value) {
              setState(() {
                myType = value!;
              });
            },
            secondary: Icon(
              Icons.work,
              color: Colors.green,
            ),
          ),
          RadioListTile(
            value: AddresType.other,
            groupValue: myType,
            title: Text('Other'),
            onChanged: (AddresType? value) {
              setState(() {
                myType = value!;
              });
            },
            secondary: Icon(
              Icons.location_city,
              color: Colors.green,
            ),
          ),
          SizedBox(height: 30),
          MyButtonWidget(onTap: () {}, text: 'Add My Addess')
        ]),
      ),
    );
  }
}
