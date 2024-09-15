import 'package:flutter/material.dart';
import 'package:netflix_clone01/widgets/homewidget_items/next_watch.dart';

class SidescrollerHelper extends StatelessWidget {
  final mostPopular;
  const SidescrollerHelper({super.key, this.mostPopular});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: FutureBuilder(
        future: mostPopular,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            print(snapshot.error.toString());
            return Center(
              child: Text(snapshot.error.toString()),
            );
          } else if (snapshot.hasData) {
            return NextWatch(snapshot: snapshot);
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
