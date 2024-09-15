import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class ScrollableHeadline extends StatelessWidget {
  String title;
  ScrollableHeadline({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, top: 0),
      child: Text(
        '$title',
        style: GoogleFonts.roboto(
            color: Colors.white, fontSize: 19, fontWeight: FontWeight.w500),
      ),
    );
  }
}
