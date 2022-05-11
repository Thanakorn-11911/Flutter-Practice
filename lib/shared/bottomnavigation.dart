// import 'package:flutter/material.dart';

// class BottomNavigatoin extends StatefulWidget {
//   const BottomNavigatoin({Key? key}) : super(key: key);

//   @override
//   State<BottomNavigatoin> createState() => _BottomNavigatoinState();
// }

// class _BottomNavigatoinState extends State<BottomNavigatoin> {
//   int selectedIndex = 0;
//   List<IconData> data = [
//     Icons.home_outlined,
//     Icons.search,
//     Icons.add_box_outlined,
//     Icons.favorite_outline_sharp,
//     Icons.person_outline_sharp
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(20),
//       child: Material(
//         elevation: 10,
//         borderRadius: BorderRadius.circular(25),
//         color: Colors.black,
//         child: SizedBox(
//           height: 75,
//           width: double.infinity,
//           child: ListView.builder(
//             itemCount: data.length,
//             padding: const EdgeInsets.symmetric(horizontal: 10),
//             itemBuilder: (ctx, i) => Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 15),
//               child: GestureDetector(
//                 onTap: () {
//                   setState(() {
//                     selectedIndex = i;
//                   });
//                 },
//                 child: AnimatedContainer(
//                   duration: const Duration(milliseconds: 250),
//                   width: 35,
//                   decoration: BoxDecoration(
//                     border: i == selectedIndex
//                         ? const Border(
//                             top: BorderSide(width: 3.0, color: Colors.white))
//                         : null,
//                     gradient: i == selectedIndex
//                         ? LinearGradient(
//                             colors: [Colors.grey.shade800, Colors.black],
//                             begin: Alignment.topCenter,
//                             end: Alignment.bottomCenter)
//                         : null,
//                   ),
//                   child: Icon(
//                     data[i],
//                     size: 35,
//                     color: i == selectedIndex
//                         ? Colors.white
//                         : Colors.grey.shade800,
//                   ),
//                 ),
//               ),
//             ),
//             scrollDirection: Axis.horizontal,
//           ),
//         ),
//       ),
//     );
//   }
// }


// // return Padding(
// //       padding: const EdgeInsets.all(20),
// //       child: Material(
// //         elevation: 10,
// //         borderRadius: BorderRadius.circular(25),
// //         color: Colors.black,
// //         child: SizedBox(
// //           height: 75,
// //           width: double.infinity,
// //           child: ListView.builder(
// //             itemCount: data.length,
// //             padding: const EdgeInsets.symmetric(horizontal: 10),
// //             itemBuilder: (ctx, i) => Padding(
// //               padding: const EdgeInsets.symmetric(horizontal: 15),
// //               child: GestureDetector(
// //                 onTap: () {
// //                   setState(() {
// //                     selectedIndex = i;
// //                   });
// //                 },
// //                 child: AnimatedContainer(
// //                   duration: const Duration(milliseconds: 250),
// //                   width: 35,
// //                   decoration: BoxDecoration(
// //                     border: i == selectedIndex
// //                         ? const Border(
// //                             top: BorderSide(width: 3.0, color: Colors.white))
// //                         : null,
// //                     gradient: i == selectedIndex
// //                         ? LinearGradient(
// //                             colors: [Colors.grey.shade800, Colors.black],
// //                             begin: Alignment.topCenter,
// //                             end: Alignment.bottomCenter)
// //                         : null,
// //                   ),
// //                   child: Icon(
// //                     data[i],
// //                     size: 35,
// //                     color: i == selectedIndex
// //                         ? Colors.white
// //                         : Colors.grey.shade800,
// //                   ),
// //                 ),
// //               ),
// //             ),
// //             scrollDirection: Axis.horizontal,
// //           ),
// //         ),
// //       ),
// //     );