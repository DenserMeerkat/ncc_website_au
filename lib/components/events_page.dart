import 'package:flutter/material.dart';
import 'package:ncc_website/components/common.dart';
import 'package:ncc_website/resources.dart/carousel.dart';
import 'package:ncc_website/resources.dart/events/events.dart';
import 'footer.dart';

class EventPage extends StatefulWidget {
  const EventPage({
    super.key,
  });

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  final items = Carousel.carouselImages;
  bool currentState = true;
  final events = EventBrain.eventList;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 20),
          const PageTitle(
            icon: Icons.tour,
            title: " \tEvents\t ",
          ),
          const SizedBox(
            height: 30,
          ),
          const TitleText(
            title: "Event Reports",
          ),
          const SizedBox(
            height: 30,
          ),
          Wrap(
            spacing: 20,
            runSpacing: 25,
            children: events,
          ),
          (size.width > 880) || (size.width < 600)
              ? const SizedBox(height: 30)
              : Container(),
          const Footer(),
        ],
      ),
    );
  }
}
