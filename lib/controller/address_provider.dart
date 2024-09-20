import 'package:flutter/material.dart';

enum AddressType {
  home,
  work,
  other,
}

class AddressProvider extends ChangeNotifier {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lasttNameController = TextEditingController();
  final TextEditingController contactController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController areaController = TextEditingController();
  final TextEditingController landmarkController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController picodeController = TextEditingController();
  final TextEditingController countryController = TextEditingController();
  final TextEditingController instructionController = TextEditingController();
  var myType = AddressType.home;

  addressType(value) {
    myType = value;
    notifyListeners();
  }
}
