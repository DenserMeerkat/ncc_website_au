import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:ncc_website/components/common.dart';
import 'package:ncc_website/constants.dart';
import 'package:ncc_website/resources.dart/carousel.dart';
import 'package:ncc_website/resources.dart/events/events.dart';
import 'footer.dart';

class GalleryPage extends StatefulWidget {
  const GalleryPage({
    super.key,
  });

  @override
  State<GalleryPage> createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
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
            icon: Icons.photo_library,
            title: " \tGallery\t ",
          ),
          const SizedBox(
            height: 30,
          ),
          const TitleText(
            title: "Drive Links",
          ),
          const SizedBox(
            height: 30,
          ),
          Wrap(
            spacing: 20,
            runSpacing: 25,
            children: [
              GalLinkCard(
                title: "EBSB Phase VII",
                date: "2021-04-19",
                link:
                    "https://drive.google.com/drive/folders/1opQqBDQCw0Ik27zFDqQW8rJth7WrYVwg?usp=sharing",
              ),
              GalLinkCard(
                title: "Plog Run",
                date: "2021-04-13",
                link:
                    "https://drive.google.com/drive/folders/1Z_fhCowxmO5kl0a_6eG7KeouUd1E1iB8?usp=sharing",
              ),
              GalLinkCard(
                title: "Statue cleaning",
                date: "2021-03-12",
                link:
                    "https://drive.google.com/drive/folders/1xcKbcpekXg4MPzli7vNKJB4tHyS1wz4p?usp=sharing",
              ),
              GalLinkCard(
                title: "EBSB Phase VII",
                date: "2021-04-19",
                link:
                    "https://drive.google.com/drive/folders/1opQqBDQCw0Ik27zFDqQW8rJth7WrYVwg?usp=sharing",
              ),
              GalLinkCard(
                title: "Plog Run",
                date: "2021-04-13",
                link:
                    "https://drive.google.com/drive/folders/1Z_fhCowxmO5kl0a_6eG7KeouUd1E1iB8?usp=sharing",
              ),
              GalLinkCard(
                title: "Statue cleaning",
                date: "2021-03-12",
                link:
                    "https://drive.google.com/drive/folders/1xcKbcpekXg4MPzli7vNKJB4tHyS1wz4p?usp=sharing",
              ),
              GalLinkCard(
                title: "EBSB Phase VII",
                date: "2021-04-19",
                link:
                    "https://drive.google.com/drive/folders/1opQqBDQCw0Ik27zFDqQW8rJth7WrYVwg?usp=sharing",
              ),
              GalLinkCard(
                title: "Plog Run",
                date: "2021-04-13",
                link:
                    "https://drive.google.com/drive/folders/1Z_fhCowxmO5kl0a_6eG7KeouUd1E1iB8?usp=sharing",
              ),
              GalLinkCard(
                title: "Statue cleaning",
                date: "2021-03-12",
                link:
                    "https://drive.google.com/drive/folders/1xcKbcpekXg4MPzli7vNKJB4tHyS1wz4p?usp=sharing",
              ),
              GalLinkCard(
                title: "EBSB Phase VII",
                date: "2021-04-19",
                link:
                    "https://drive.google.com/drive/folders/1opQqBDQCw0Ik27zFDqQW8rJth7WrYVwg?usp=sharing",
              ),
              GalLinkCard(
                title: "Plog Run",
                date: "2021-04-13",
                link:
                    "https://drive.google.com/drive/folders/1Z_fhCowxmO5kl0a_6eG7KeouUd1E1iB8?usp=sharing",
              ),
              GalLinkCard(
                title: "Statue cleaning",
                date: "2021-03-12",
                link:
                    "https://drive.google.com/drive/folders/1xcKbcpekXg4MPzli7vNKJB4tHyS1wz4p?usp=sharing",
              ),
            ],
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

class GalLinkCard extends StatelessWidget {
  final String title;
  final String date;
  final String link;
  const GalLinkCard({
    super.key,
    required this.title,
    required this.date,
    required this.link,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      constraints: const BoxConstraints(maxWidth: 900),
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 30),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      decoration: boxDecoration,
      child: size.width < 600
          ? Column(
              children: [
                GalCardTop(
                  title: title,
                  date: date,
                  link: link,
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const Spacer(),
                    FilledButton.icon(
                      onPressed: () {
                        html.window.open(link, "_blank");
                      },
                      label: const SelectableText("Drive Link"),
                      icon: const Icon(
                        Icons.open_in_new,
                        size: 15,
                      ),
                    ),
                  ],
                )
              ],
            )
          : GalCardTop(
              title: title,
              date: date,
              link: link,
            ),
    );
  }
}

class GalCardTop extends StatelessWidget {
  const GalCardTop({
    super.key,
    required this.title,
    required this.date,
    required this.link,
  });

  final String title;
  final String date;
  final String link;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          Icons.not_started,
          size: 20,
        ),
        const SizedBox(width: 10),
        SelectableText(
          title.truncate(size.width ~/ 33),
          maxLines: 1,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(width: 20),
        Chip(
          backgroundColor: Colors.red[50],
          side: const BorderSide(color: Colors.black45, width: 1),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          avatar: Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black87, width: 1),
              borderRadius: BorderRadius.circular(50),
            ),
            child: const FittedBox(
              child: Icon(
                Icons.calendar_month,
                color: Colors.black,
              ),
            ),
          ),
          label: SelectableText(date),
        ),
        const Spacer(),
        size.width < 600
            ? const SizedBox(width: 0)
            : FilledButton.icon(
                onPressed: () {
                  html.window.open(link, "_blank");
                },
                label: const Text("Drive Link"),
                icon: const Icon(
                  Icons.open_in_new,
                  size: 15,
                ),
              ),
      ],
    );
  }
}
