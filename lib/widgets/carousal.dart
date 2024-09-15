import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone01/common/constant.dart';
import 'package:netflix_clone01/screens/details_screen.dart';

class Carousal_Widget_Screen extends StatelessWidget {
  const Carousal_Widget_Screen({
    super.key,
    required this.snapshot,
  });
  final AsyncSnapshot snapshot;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
          child: CarouselSlider.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, itemIndex, pageIndex) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                          movie: snapshot.data[itemIndex],
                        ),
                      ),
                    );
                  },
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        "${Constants.imagePath}${snapshot.data[itemIndex].PosterPath}",
                        fit: BoxFit.cover,
                        filterQuality: FilterQuality.high,
                      )),
                );
              },
              options: CarouselOptions(
                  height: 200,
                  aspectRatio: 16 / 9,
                  reverse: false,
                  viewportFraction: 0.37,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  autoPlay: false,
                  enlargeCenterPage: false,
                  scrollDirection: Axis.horizontal)),
        ),
      ],
    );
  }
}
