// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:netflix_clone01/widgets/bottom_navigationbar.dart';
import 'package:netflix_clone01/widgets/colors.dart';

dynamic profilepic;
dynamic username;

// ignore: must_be_immutable
class AccountLoad extends StatefulWidget {
  dynamic link;
  dynamic name;

  AccountLoad({
    Key? key,
    required this.link,
    required this.name,
  }) : super(key: key);

  @override
  State<AccountLoad> createState() => _AccountLoadState();
}

class _AccountLoadState extends State<AccountLoad> {
  @override
  void initState() {
    setState(
      () {
        profilepic = widget.link;
        username = widget.name;
      },
    );
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => BottomNav()));
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bckClr,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 260),
              child: Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(image: AssetImage(widget.link))),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 60,
              width: 60,
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}
