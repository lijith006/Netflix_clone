// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:netflix_clone01/widgets/account_load.dart';

// class UserGrid extends StatefulWidget {
//   const UserGrid({super.key});

//   @override
//   State<UserGrid> createState() => _UserGridState();
// }

// class _UserGridState extends State<UserGrid> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           children: [
//             Column(
//               children: [
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.pushReplacement(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => AccountLoad(
//                               link: "assets/blue.webp", name: "Amal"),
//                         ));
//                   },
//                   child: Container(
//                     height: 110,
//                     width: 110,
//                     decoration: BoxDecoration(
//                         image: DecorationImage(
//                             image: AssetImage("assets/blue.webp")),
//                         borderRadius: BorderRadius.circular(6)),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                   'Amal',
//                   style: GoogleFonts.roboto(color: Colors.white, fontSize: 18),
//                 ),
//                 SizedBox(
//                   height: 25,
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.pushReplacement(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => AccountLoad(
//                               link: "assets/red.webp", name: "Tommy"),
//                         ));
//                   },
//                   child: Container(
//                     height: 110,
//                     width: 110,
//                     decoration: BoxDecoration(
//                         image: DecorationImage(
//                             image: AssetImage("assets/blue.webp")),
//                         borderRadius: BorderRadius.circular(6)),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                   'Tommy',
//                   style: GoogleFonts.roboto(color: Colors.white, fontSize: 18),
//                 )
//               ],
//             ),
//             SizedBox(
//               width: 30,
//             ),
//             Column(
//               children: [
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.pushReplacement(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => AccountLoad(
//                               link: "assets/blue.webp", name: "Ash"),
//                         ));
//                   },
//                   child: Container(
//                     height: 110,
//                     width: 110,
//                     decoration: BoxDecoration(
//                         image: DecorationImage(
//                             image: AssetImage("assets/blue.webp")),
//                         borderRadius: BorderRadius.circular(6)),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                   'Ash',
//                   style: GoogleFonts.roboto(
//                     color: Colors.white,
//                     fontSize: 18,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 25,
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone01/widgets/account_load.dart';
import 'package:netflix_clone01/widgets/colors.dart';

class UserGrid extends StatefulWidget {
  const UserGrid({
    super.key,
  });

  @override
  State<UserGrid> createState() => _UserGridState();
}

class _UserGridState extends State<UserGrid> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AccountLoad(
                            link: "assets/blue.webp",
                            name: "Amal",
                          ),
                        ));
                  },
                  child: Container(
                    height: 110,
                    width: 110,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/blue.webp")),
                        borderRadius: BorderRadius.circular(6)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Amal",
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AccountLoad(
                            link: "assets/blue.webp",
                            name: "Tommy",
                          ),
                        ));
                  },
                  child: Container(
                    height: 110,
                    width: 110,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/blue.webp"),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Tommy",
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 30,
            ),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AccountLoad(
                            link: "assets/blue.webp",
                            name: "Ash",
                          ),
                        ));
                  },
                  child: Container(
                    height: 110,
                    width: 110,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/blue.webp")),
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Ash",
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      color: bckClr,
                      borderRadius: BorderRadius.circular(8)),
                  child: Icon(
                    Icons.add,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Add profile",
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
