// import 'package:flutter/material.dart';

// class AppBarBuilder extends StatelessWidget {
//   final IconData? icon1;
//   final IconData? icon2;
//   final String? locationText;
//   final String? currentLocation;
//   final String userImage;

//   const AppBarBuilder({
//     super.key,
//     required this.icon1,
//     required this.icon2,
//     required this.locationText,
//     required this.currentLocation,
//     required this.userImage,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//         leading: Row(
//       children: [
//         Icon(icon1),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(locationText!),
//             Row(
//               children: [
//                 Text(currentLocation!),
//                 Icon(icon2),
//               ],
//             ),
//           ],
//         ),
//         Image.asset(userImage),
//       ],
//     ));
//   }
// }
