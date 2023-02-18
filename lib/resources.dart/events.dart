import 'package:ncc_website/components/eventcard.dart';
import 'package:ncc_website/resources.dart/carousel.dart';

class EventImg {
  final String url;
  final String caption;
  EventImg({
    required this.url,
    required this.caption,
  });
}

class Event {
  final String title;
  final String location;
  final String date;
  final String description;
  final List<EventImg> imgList;
  final String fileURL;

  Event({
    required this.title,
    required this.location,
    required this.date,
    required this.description,
    required this.imgList,
    required this.fileURL,
  });
}

class EventBrain {
  static List<EventCard> eventList = [
    EventCard(
      title: "Cycle Rally",
      date: '27/07/2022',
      location: "Anna University, Chennai - 25",
      description:
          '''Cadets of NCC Army Wing, Anna University participated in the cycle rally conducted for the International Chess Olympiad inauguration event on 27th July 2022.The rally commenced from Presidency college, Triplicane to Jawaharlal Nehru stadium, Chennai Central. Cadets were accompanied by ANO’s and PI staff. The “44th Chess Olympiad” organised by the Federation Internationale des Eches(FIDE) to promote the game of chess, was held in Chennai, Tamil Nadu and it was the first time to be conducted in India, after being moved out of Moscow in Russia. Grandmaster Vishwanathan Anand carried the Olympiad torch. Civilians from various organisations like NSO,YRC together with the NCC cadets of various units followed him. Nearly 4.9 kilometers were covered in this rally. The cadets volunteered for the rally and gave their active participation. ''',
      imgList: const [
        EventImage(
          caption: 'assets/images/ncc_logo.png',
          imageURL: 'assets/images/ncc_1.jpg',
        ),
        EventImage(
          caption: 'assets/images/ncc_logo.png',
          imageURL: 'assets/images/ncc_2.jpg',
        ),
        EventImage(
          caption: 'assets/images/ncc_logo.png',
          imageURL: 'assets/images/ncc_3.jpg',
        ),
      ],
      fileURL: "url",
    ),
    EventCard(
      title: "Cycle Rally",
      date: '27/07/2022',
      location: "Anna University, Chennai - 25",
      description:
          '''Cadets of NCC Army Wing, Anna University participated in the cycle rally conducted for the International Chess Olympiad inauguration event on 27th July 2022.The rally commenced from Presidency college, Triplicane to Jawaharlal Nehru stadium, Chennai Central. Cadets were accompanied by ANO’s and PI staff. The “44th Chess Olympiad” organised by the Federation Internationale des Eches(FIDE) to promote the game of chess, was held in Chennai, Tamil Nadu and it was the first time to be conducted in India, after being moved out of Moscow in Russia. Grandmaster Vishwanathan Anand carried the Olympiad torch. Civilians from various organisations like NSO,YRC together with the NCC cadets of various units followed him. Nearly 4.9 kilometers were covered in this rally. The cadets volunteered for the rally and gave their active participation. ''',
      imgList: const [
        EventImage(
          caption: 'assets/images/ncc_logo.png',
          imageURL: 'assets/images/ncc_1.jpg',
        ),
        EventImage(
          caption: 'assets/images/ncc_logo.png',
          imageURL: 'assets/images/ncc_2.jpg',
        ),
        EventImage(
          caption: 'assets/images/ncc_logo.png',
          imageURL: 'assets/images/ncc_3.jpg',
        ),
      ],
      fileURL: "url",
    ),
    EventCard(
      title: "Cycle Rally",
      date: '27/07/2022',
      location: "Anna University, Chennai - 25",
      description:
          '''Cadets of NCC Army Wing, Anna University participated in the cycle rally conducted for the International Chess Olympiad inauguration event on 27th July 2022.The rally commenced from Presidency college, Triplicane to Jawaharlal Nehru stadium, Chennai Central. Cadets were accompanied by ANO’s and PI staff. The “44th Chess Olympiad” organised by the Federation Internationale des Eches(FIDE) to promote the game of chess, was held in Chennai, Tamil Nadu and it was the first time to be conducted in India, after being moved out of Moscow in Russia. Grandmaster Vishwanathan Anand carried the Olympiad torch. Civilians from various organisations like NSO,YRC together with the NCC cadets of various units followed him. Nearly 4.9 kilometers were covered in this rally. The cadets volunteered for the rally and gave their active participation. ''',
      imgList: [
        EventImage(
          caption: 'assets/images/ncc_logo.png',
          imageURL: 'assets/images/ncc_1.jpg',
        ),
        EventImage(
          caption: 'assets/images/ncc_logo.png',
          imageURL: 'assets/images/ncc_2.jpg',
        ),
        EventImage(
          caption: 'assets/images/ncc_logo.png',
          imageURL: 'assets/images/ncc_3.jpg',
        ),
      ],
      fileURL: "url",
    ),
    EventCard(
      title: "Cycle Rally",
      date: '27/07/2022',
      location: "Anna University, Chennai - 25",
      description:
          '''Cadets of NCC Army Wing, Anna University participated in the cycle rally conducted for the International Chess Olympiad inauguration event on 27th July 2022.The rally commenced from Presidency college, Triplicane to Jawaharlal Nehru stadium, Chennai Central. Cadets were accompanied by ANO’s and PI staff. The “44th Chess Olympiad” organised by the Federation Internationale des Eches(FIDE) to promote the game of chess, was held in Chennai, Tamil Nadu and it was the first time to be conducted in India, after being moved out of Moscow in Russia. Grandmaster Vishwanathan Anand carried the Olympiad torch. Civilians from various organisations like NSO,YRC together with the NCC cadets of various units followed him. Nearly 4.9 kilometers were covered in this rally. The cadets volunteered for the rally and gave their active participation. ''',
      imgList: [
        EventImage(
          caption: 'assets/images/ncc_logo.png',
          imageURL: 'assets/images/ncc_1.jpg',
        ),
        EventImage(
          caption: 'assets/images/ncc_logo.png',
          imageURL: 'assets/images/ncc_2.jpg',
        ),
        EventImage(
          caption: 'assets/images/ncc_logo.png',
          imageURL: 'assets/images/ncc_3.jpg',
        ),
      ],
      fileURL: "url",
    ),
    EventCard(
      title: "Cycle Rally",
      date: '27/07/2022',
      location: "Anna University, Chennai - 25",
      description:
          '''Cadets of NCC Army Wing, Anna University participated in the cycle rally conducted for the International Chess Olympiad inauguration event on 27th July 2022.The rally commenced from Presidency college, Triplicane to Jawaharlal Nehru stadium, Chennai Central. Cadets were accompanied by ANO’s and PI staff. The “44th Chess Olympiad” organised by the Federation Internationale des Eches(FIDE) to promote the game of chess, was held in Chennai, Tamil Nadu and it was the first time to be conducted in India, after being moved out of Moscow in Russia. Grandmaster Vishwanathan Anand carried the Olympiad torch. Civilians from various organisations like NSO,YRC together with the NCC cadets of various units followed him. Nearly 4.9 kilometers were covered in this rally. The cadets volunteered for the rally and gave their active participation. ''',
      imgList: [
        EventImage(
          caption: 'assets/images/ncc_logo.png',
          imageURL: 'assets/images/ncc_1.jpg',
        ),
        EventImage(
          caption: 'assets/images/ncc_logo.png',
          imageURL: 'assets/images/ncc_2.jpg',
        ),
        EventImage(
          caption: 'assets/images/ncc_logo.png',
          imageURL: 'assets/images/ncc_3.jpg',
        ),
      ],
      fileURL: "url",
    ),
    EventCard(
      title: "Cycle Rally",
      date: '27/07/2022',
      location: "Anna University, Chennai - 25",
      description:
          '''Cadets of NCC Army Wing, Anna University participated in the cycle rally conducted for the International Chess Olympiad inauguration event on 27th July 2022.The rally commenced from Presidency college, Triplicane to Jawaharlal Nehru stadium, Chennai Central. Cadets were accompanied by ANO’s and PI staff. The “44th Chess Olympiad” organised by the Federation Internationale des Eches(FIDE) to promote the game of chess, was held in Chennai, Tamil Nadu and it was the first time to be conducted in India, after being moved out of Moscow in Russia. Grandmaster Vishwanathan Anand carried the Olympiad torch. Civilians from various organisations like NSO,YRC together with the NCC cadets of various units followed him. Nearly 4.9 kilometers were covered in this rally. The cadets volunteered for the rally and gave their active participation. ''',
      imgList: [
        EventImage(
          caption: 'assets/images/ncc_logo.png',
          imageURL: 'assets/images/ncc_1.jpg',
        ),
        EventImage(
          caption: 'assets/images/ncc_logo.png',
          imageURL: 'assets/images/ncc_2.jpg',
        ),
        EventImage(
          caption: 'assets/images/ncc_logo.png',
          imageURL: 'assets/images/ncc_3.jpg',
        ),
      ],
      fileURL: "url",
    ),
  ];
}
