import 'package:flutter/material.dart';
import 'package:ncc_website/responsive/responsive_layout.dart';

class Carousel {
  static List<Widget> carouselImages = [
    const CarouselImage(
      image: "assets/images/ncc_1.jpg",
      text:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
    ),
    const CarouselImage(
      image: "assets/images/ncc_2.jpg",
      text:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
    ),
    const CarouselImage(
      image: "assets/images/ncc_3.jpg",
      text:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
    ),
    const CarouselImage(
      image: "assets/images/ncc_4.jpg",
      text:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
    ),
    const CarouselImage(
      image: "assets/images/ncc_5.jpg",
      text:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
    ),
  ];
}

class CarouselImage extends StatelessWidget {
  final String image;
  final String text;
  final double fsize;
  const CarouselImage({
    super.key,
    required this.image,
    required this.text,
    this.fsize = 15.0,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: Container(
            clipBehavior: Clip.antiAlias,
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.01),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  offset: Offset(2, 2),
                  color: Colors.grey,
                  blurRadius: 5,
                ),
              ],
            ),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Container(
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.01),
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: ResponsiveLayout.checkPlatform(context) == 1
                        ? 15
                        : ResponsiveLayout.checkPlatform(context) == 2
                            ? 14
                            : 11,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
