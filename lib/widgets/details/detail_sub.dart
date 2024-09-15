import 'package:flutter/material.dart';
import 'package:netflix_clone01/widgets/details/detail_scroll.dart';

class DetailSubScroll extends StatelessWidget {
  final movielist;
  const DetailSubScroll({super.key, required this.movielist});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: FutureBuilder(
        future: movielist,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            print(snapshot.error.toString());
            return Center(
              child: Text(snapshot.error.toString()),
            );
          } else if (snapshot.hasData) {
            return DetailScroll(snapshot: snapshot);
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
