import 'package:flutter/material.dart';
import 'package:foody_buddy/controller/address_provider.dart';
import 'package:foody_buddy/widgets/address_textfield_widget.dart';
import 'package:foody_buddy/widgets/button.dart';
import 'package:provider/provider.dart';

class AddressWidget extends StatefulWidget {
  const AddressWidget({super.key});

  @override
  State<AddressWidget> createState() => _AddressWidgetState();
}

class _AddressWidgetState extends State<AddressWidget> {
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
      body: Consumer<AddressProvider>(
        builder: (context, value, child) => Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: ListView(children: [
            AddressTextfieldWidget(
                labelText: 'First Name',
                textController: value.firstNameController),
            AddressTextfieldWidget(
                labelText: 'Last Name',
                textController: value.lasttNameController),
            AddressTextfieldWidget(
                labelText: 'Contact Number',
                textController: value.contactController,
                keyboardType: TextInputType.number),
            AddressTextfieldWidget(
              labelText: 'Street Addess',
              textController: value.addressController,
            ),
            AddressTextfieldWidget(
              labelText: 'Area',
              textController: value.areaController,
            ),
            AddressTextfieldWidget(
              labelText: 'Landmark',
              textController: value.landmarkController,
            ),
            AddressTextfieldWidget(
              labelText: 'City',
              textController: value.cityController,
            ),
            AddressTextfieldWidget(
              labelText: 'Pincode',
              textController: value.picodeController,
              keyboardType: TextInputType.number,
            ),
            AddressTextfieldWidget(
              labelText: 'Country',
              textController: value.countryController,
            ),
            AddressTextfieldWidget(
              labelText: 'Delivery Instructions',
              textController: value.instructionController,
            ),
            SizedBox(height: 10),
            ListTile(title: Text('Address Type*')),
            RadioListTile(
              value: AddressType.home,
              groupValue: value.myType,
              title: Text('Home'),
              onChanged: (AddressType? value) {
                Provider.of<AddressProvider>(context, listen: false)
                    .addressType(value);
              },
              secondary: Icon(
                Icons.home,
                color: Colors.green,
              ),
            ),
            RadioListTile(
              value: AddressType.work,
              groupValue: value.myType,
              title: Text('Office'),
              onChanged: (AddressType? value) {
                Provider.of<AddressProvider>(context, listen: false)
                    .addressType(value);
              },
              secondary: Icon(
                Icons.work,
                color: Colors.green,
              ),
            ),
            RadioListTile(
              value: AddressType.other,
              groupValue: value.myType,
              title: Text('Other'),
              onChanged: (AddressType? value) {
                Provider.of<AddressProvider>(context, listen: false)
                    .addressType(value);
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
      ),
    );
  }
}
