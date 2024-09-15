import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone01/models/movie.dart';
import 'package:netflix_clone01/screens/search_screen.dart';
import 'package:netflix_clone01/services/api.dart';
import 'package:netflix_clone01/widgets/account_load.dart';
import 'package:netflix_clone01/widgets/colors.dart';
import 'package:netflix_clone01/widgets/font_style.dart';
import 'package:netflix_clone01/widgets/homewidget_items/card.dart';
import 'package:netflix_clone01/widgets/homewidget_items/detail_scroll_helper.dart';
import 'package:netflix_clone01/widgets/homewidget_items/scrollable_headline.dart';
import 'package:netflix_clone01/widgets/homewidget_items/sidescroller_helper.dart';
import 'package:netflix_clone01/widgets/homewidget_items/top_ten_scroller.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  late Future<List<Movie>> topratedMovies;
  late Future<List<Movie>> mostPopular;
  late Future<List<Movie>> yourNextWatch;
  late Future<List<Movie>> toptens;
  late Future<List<Movie>> newOn;

  @override
  void initState() {
    topratedMovies = Api().getUpcomingMovies();
    mostPopular = Api().getTrendingMovies();
    yourNextWatch = Api().getNextWatch();
    toptens = Api().getTopRatedMovies();
    newOn = Api().getNewOn();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: appgradient),
        child: DefaultTabController(
          length: 3,
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: const Color.fromARGB(
                  209,
                  69,
                  75,
                  104,
                ),
                expandedHeight: 90,
                floating: true,
                pinned: true,
                // flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  'For $username',
                  style: headLine,
                ),
                // Container(
                //   width: 75,
                //   height: 65,
                //   child: Image.asset('assets/netflix.png'),
                // ),
                //  ),
                actions: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SearchScreen(),
                        ),
                      );
                    },
                    child: const Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 33,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              scrollData()
            ],
          ),
        ),
      ),
    );
  }

  Widget scrollData() => SliverToBoxAdapter(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              gradient: homeGradient,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: FutureBuilder<List<Movie>>(
                    future: topratedMovies,
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        return Center(
                          child: Text(
                            snapshot.error.toString(),
                            style: const TextStyle(color: Colors.white),
                          ),
                        );
                      } else if (snapshot.hasData) {
                        return OneCard(snapshot: snapshot);
                      } else {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    },
                  ),
                ),
                const SizedBox(height: 10),

                //+++++++++++++++
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Continue watching for $username ',
                    style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                DetailScrollHelper(movielist: mostPopular),
                ScrollableHeadline(
                  title: "Your Next Watch",
                ),
                SizedBox(
                  height: 4,
                ),
                SidescrollerHelper(mostPopular: yourNextWatch),
                ScrollableHeadline(
                  title: "Top 10 Movies",
                ),
                ToptenScroll(movielist: toptens),
                SizedBox(
                  height: 10,
                ),
                ScrollableHeadline(title: "We Think You'll Love These"),
                SizedBox(
                  height: 8,
                ),
                SidescrollerHelper(mostPopular: topratedMovies),
                SizedBox(
                  height: 2,
                ),
                ScrollableHeadline(title: "Today' Top Picks for You"),
                SizedBox(
                  height: 8,
                ),
                SidescrollerHelper(mostPopular: toptens),
                ScrollableHeadline(title: "New on Netflix"),
                SizedBox(
                  height: 8,
                ),
                SidescrollerHelper(mostPopular: newOn),

                //+++++++++++++++

                // Row(
                //   children: [
                //     Icon(
                //       Icons.thumb_up_off_alt_sharp,
                //       color: Colors.white,
                //     ),
                //************************************************************** */
                //     SizedBox(
                //       width: 5,
                //     ),
                //     Text(
                //       "We Think You'll Love These",
                //       style: GoogleFonts.roboto(
                //           color: Colors.white,
                //           fontSize: 19,
                //           fontWeight: FontWeight.w500),
                //     ),
                //   ],
                // ),
                // const SizedBox(height: 10),
                // Carousel Widget******************************************
                // FutureBuilder<List<Movie>>(
                //   future: mostPopular,
                //   builder: (context, snapshot) {
                //     if (snapshot.hasError) {
                //       return Center(
                //         child: Text(
                //           snapshot.error.toString(),
                //           style: const TextStyle(color: Colors.white),
                //         ),
                //       );
                //     } else if (snapshot.hasData) {
                //       return Carousal_Widget_Screen(snapshot: snapshot);
                //     } else {
                //       return const Center(
                //         child: CircularProgressIndicator(),
                //       );
                //     }
                //   },
                // ),
                // const SizedBox(height: 10),
                // Padding(
                //   padding: const EdgeInsets.only(left: 10),
                //   child: Text(
                //     'Continue watching',
                //     style: GoogleFonts.roboto(
                //         color: Colors.white,
                //         fontSize: 19,
                //         fontWeight: FontWeight.w500),
                //   ),
                // ),
                // const SizedBox(height: 4),
                // FutureBuilder<List<Movie>>(
                //   future: yourNextWatch,
                //   builder: (context, snapshot) {
                //     if (snapshot.hasError) {
                //       return Center(
                //         child: Text(
                //           snapshot.error.toString(),
                //           style: const TextStyle(color: Colors.white),
                //         ),
                //       );
                //     } else if (snapshot.hasData) {
                //       return Carousal_Widget_Screen(snapshot: snapshot);
                //     } else {
                //       return const Center(
                //         child: CircularProgressIndicator(),
                //       );
                //     }
                //   },
                // ),
//**************************************************************************** */
                // SizedBox(
                //   height: 10,
                // ),

                // ScrollableHeadline(title: 'Your next watch'),
                // SizedBox(
                //   height: 4,
                // ),
                // SidescrollerHelper(mostPopular: yourNextWatch),
                // ScrollableHeadline(
                //   title: "Top 10 Movies",
                // ),
                // ToptenScroll(movielist: toptens),
                // SizedBox(
                //   height: 10,
                // ),
                // ScrollableHeadline(title: 'We think you love this')
              ],
            ),
          ),
        ),
      );
}
