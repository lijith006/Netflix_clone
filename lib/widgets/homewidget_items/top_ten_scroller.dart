import 'package:flutter/material.dart';
import 'package:netflix_clone01/widgets/homewidget_items/top_ten_slider.dart';

class ToptenScroll extends StatelessWidget {
  final movielist;
  const ToptenScroll({super.key, required this.movielist});

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
              return TopTenSlider(snapshot: snapshot);
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}
