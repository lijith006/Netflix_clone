import 'package:flutter/material.dart';
import 'package:netflix_clone01/widgets/homewidget_items/movieslider.dart';

class DetailScrollHelper extends StatelessWidget {
  final movielist;
  const DetailScrollHelper({super.key, required this.movielist});

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
            return MoviesSlider(snapshot: snapshot);
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
