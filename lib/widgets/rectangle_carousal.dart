// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';

// class RectangleCarousal extends StatelessWidget {
//   const RectangleCarousal({super.key, required this.snapshot});
//   final AsyncSnapshot snapshot;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         SizedBox(
//           width: double.infinity,
//           child: CarouselSlider.builder(
//             itemCount: snapshot.data!.length,
//             itemBuilder: (context, itemIndex, pageIndex) {
//               return Column(
//                 children: [
//                   ClipRRect(
//                     borderRadius: BorderRadius.circular(12),
//                     child: Container(
//                       height: 100,
//                       width: 185,
//                       decoration: BoxDecoration(
//                         gradient: LinearGradient(
//                             colors: [Colors.blueAccent, Colors.lightBlue],
//                             begin: Alignment.topCenter,
//                             end: Alignment.bottomCenter),
//                       ),
//                       child: Center(
//                         child: Text(
//                           'Top',
//                           style: TextStyle(color: Colors.white),
//                         ),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 8),
//                   ClipRRect(
//                     borderRadius: BorderRadius.circular(12),
//                     child: Container(
//                       height: 100,
//                       width: 185,
//                       decoration: BoxDecoration(
//                           gradient: LinearGradient(
//                               colors: [Colors.blueAccent, Colors.lightBlue],
//                               begin: Alignment.topCenter,
//                               end: Alignment.bottomCenter)),
//                       child: Center(
//                         child: Text(
//                           'test2',
//                           style: TextStyle(color: Colors.white),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               );
//             },
//             options: CarouselOptions(
//               height: 220,
//               aspectRatio: 16 / 9,
//               reverse: false,
//               viewportFraction: 0.5,
//               autoPlay: false,
//               enlargeCenterPage: false,
//               scrollDirection: Axis.horizontal,
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }
