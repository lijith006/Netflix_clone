import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone01/models/movie.dart';
import 'package:netflix_clone01/screens/search_screen.dart';
import 'package:netflix_clone01/services/api.dart';
import 'package:netflix_clone01/widgets/font_style.dart';
import 'package:netflix_clone01/widgets/new&hot/coming_soon_slider_view.dart';

class NewsAndHot extends StatefulWidget {
  const NewsAndHot({super.key});

  @override
  State<NewsAndHot> createState() => _NewsAndHotState();
}

class _NewsAndHotState extends State<NewsAndHot> {
  late Future<List<Movie>> moreMovies;
  late Future<List<Movie>> everyOneWatched;
  @override
  void initState() {
    super.initState();
    moreMovies = Api().getNextWatch();
    everyOneWatched = Api().getTrendingMovies();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.black,
            title: Text(
              'New & Hot',
              style: headLine,
            ),
            actions: [
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SearchScreen(),
                      ));
                },
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 28,
                ),
              ),
              SizedBox(
                width: 23,
              ),
            ],
            bottom: TabBar(
                unselectedLabelColor: Colors.white,
                dividerColor: Colors.black,
                isScrollable: false,
                labelColor: Colors.black,
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white),
                tabs: [
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Container(
                      child: Text('🍿  Coming Soon'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Container(
                      height: 30,
                      child: Center(
                        child: Text(
                          "🔥 Everyone's Watching",
                          style: GoogleFonts.roboto(),
                        ),
                      ),
                    ),
                  )
                ]),
          ),
          body: TabBarView(children: [
            SizedBox(
              child: FutureBuilder(
                future: everyOneWatched,
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Center(
                      child: Text(snapshot.error.toString()),
                    );
                  } else if (snapshot.hasData) {
                    return ComingSliderView(
                      snapshot: snapshot,
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ),
            SizedBox(
              child: FutureBuilder(
                future: moreMovies,
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Center(
                      child: Text(snapshot.error.toString()),
                    );
                  } else if (snapshot.hasData) {
                    return ComingSliderView(snapshot: snapshot);
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            )
          ]),
        ));
  }
}
