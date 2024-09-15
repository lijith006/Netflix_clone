import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter/widgets.dart';
import 'package:netflix_clone01/widgets/colors.dart';
import 'package:netflix_clone01/widgets/user_grid.dart';

class UserSelection extends StatefulWidget {
  const UserSelection({super.key});

  @override
  State<UserSelection> createState() => _UserSelectionState();
}

class _UserSelectionState extends State<UserSelection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bckClr,
        appBar: AppBar(
          backgroundColor: bckClr,
          centerTitle: true,
          title: Image.asset(
            'assets/logo.png',
            height: 45,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.edit, color: Colors.white),
            ),
            SizedBox(
              width: 23,
            )
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 185,
            ),
            Center(
              child: Container(
                  height: 350,
                  width: 290,
                  color: bckClr,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: UserGrid(),
                  )),
            ),
          ],
        ));
  }
}
