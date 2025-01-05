import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List listImages = [
    'https://overlay.imageonline.co/overlay-image.jpg',
    'https://img-cdn.pixlr.com/image-generator/history/65bb506dcb310754719cf81f/ede935de-1138-4f66-8ed7-44bd16efc709/medium.webp',
    'https://media.istockphoto.com/id/636379014/photo/hands-forming-a-heart-shape-with-sunset-silhouette.jpg?s=612x612&w=0&k=20&c=CgjWWGEasjgwia2VT7ufXa10azba2HXmUDe96wZG8F0=',
    'https://images.pexels.com/photos/3998365/pexels-photo-3998365.png',
    'https://thumbs.dreamstime.com/b/two-ladybugs-orange-spring-flower-flight-insect-artistic-macro-image-concept-spring-summer-two-ladybugs-orange-125140826.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlayCurve: Curves.fastLinearToSlowEaseIn,
          height: 400.0,
          autoPlay: true,
        ),
        items: listImages.map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                    color: Colors.amber,
                    image: DecorationImage(
                        fit: BoxFit.cover, image: NetworkImage(i))),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
