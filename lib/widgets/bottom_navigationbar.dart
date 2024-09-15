import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone01/screens/homeScreen.dart';
import 'package:netflix_clone01/screens/my_netflix.dart';
import 'package:netflix_clone01/screens/news_and_hot.dart';
import 'package:netflix_clone01/widgets/account_load.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        bottomNavigationBar: Container(
          height: 70,
          color: Colors.black,
          child: TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.home_filled,
                ),
                child: Text("Home", style: GoogleFonts.roboto(fontSize: 13)),
              ),
              Tab(
                icon: Icon(Icons.video_collection_outlined),
                child: Text(
                  'New & Hot',
                  style: GoogleFonts.roboto(fontSize: 13),
                ),
              ),
              Tab(
                child: Column(
                  children: [
                    Container(
                      height: 21,
                      width: 21,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        image: DecorationImage(
                          image: AssetImage(profilepic),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'My Netflix',
                      style: GoogleFonts.roboto(fontSize: 13),
                    )
                  ],
                ),
              )
            ],
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            unselectedLabelColor: Color(0xff999999),
            dividerColor: Colors.black,
            enableFeedback: false,
          ),
        ),
        body: TabBarView(
          children: [Homescreen(), NewsAndHot(), MyNetflix()],
        ),
      ),
    );
  }
}
