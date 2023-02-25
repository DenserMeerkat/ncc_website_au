import 'package:flutter/material.dart';
import 'package:ncc_website/constants.dart';

class TitleText extends StatelessWidget {
  final String title;
  const TitleText({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 40),
        Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
            color: Colors.black87,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        const SizedBox(width: 10),
        SelectableText(
          title,
          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                color: Colors.black,
                letterSpacing: 0.5,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }
}

class PageTitle extends StatelessWidget {
  final String title;
  final IconData? icon;
  const PageTitle({
    super.key,
    required this.title,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minWidth: 100,
        maxWidth: 350,
        minHeight: 30,
        maxHeight: 50,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 16,
      ),
      decoration: BoxDecoration(
          color: Colors.grey[350],
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              offset: const Offset(1, 1),
              color: Colors.grey[500]!,
              blurRadius: 3,
            ),
          ]),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          icon != null ? const SizedBox(width: 10) : const SizedBox(width: 0),
          icon != null ? Icon(icon) : const SizedBox(width: 0),
          SelectableText(
            title,
            style: const TextStyle(
              fontSize: 22,
              color: Colors.black87,
              letterSpacing: 1,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
}

class NccInfo extends StatelessWidget {
  const NccInfo({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          constraints: const BoxConstraints(
            minHeight: 200,
            maxHeight: 1000,
          ),
          width: size.width,
          child: Wrap(
            spacing: 5,
            runSpacing: 15,
            alignment: WrapAlignment.center,
            runAlignment: WrapAlignment.start,
            children: [
              Container(
                constraints: const BoxConstraints(minWidth: 280, maxWidth: 320),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const TitleText(
                      title: "What is NCC",
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.all(8),
                      decoration: boxDecoration,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: SelectableText(
                                  "The National Cadet Corps in India is a voluntary organization which recruits cadets from high schools, colleges and Universities all over India. The Cadets are given basic military training in small arms and parades."),
                            ),
                          ),
                          const SizedBox(width: 5),
                          SizedBox(
                              height: 80,
                              width: 60,
                              child: Center(
                                  child: Image.asset(
                                      "assets/images/ncc_logo.png"))),
                          const SizedBox(width: 5),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                constraints: const BoxConstraints(minWidth: 200, maxWidth: 280),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const TitleText(
                      title: "Pledge of NCC",
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.all(8),
                      decoration: boxDecoration,
                      child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: SelectableText(
                                  "We the cadet of the national cadet corps, do solemnly pledge that we shall always uphold the unity of india.We resolve to be disciplined and responsible citizen of our nation.We shall undertake positive community service in the spirit of selflessness and concern for our fellow beings"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: size.width * 0.6,
                constraints: const BoxConstraints(minWidth: 340, maxWidth: 450),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const TitleText(
                      title: "Flag of NCC",
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.all(8),
                      decoration: boxDecoration,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: SelectableText(
                                  "NCC Flag Contains NCC Crest in gold in the middle, with the letters \"NCC\" encircled by a wreath of seventeen lotus with a background in Red, Blue and Light blue.Red depicts the Army, Deep Blue depicts the Navy and Light Blue depicts the Air Force. The seventeen lotuses represent the 17 State Directorates. \"Unity and Discipline\" (Ekta aur Anushasan) is written at the bottom of the NCC Flag."),
                            ),
                          ),
                          SizedBox(
                            height: 60,
                            width: 100,
                            child: Center(
                              child: Image.asset(
                                "assets/images/ncc_flag.png",
                              ),
                            ),
                          ),
                          const SizedBox(width: 5)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 5),
        size.width < 830
            ? const SizedBox(
                height: 20,
              )
            : Container(),
      ],
    );
  }
}

class AimNCC extends StatelessWidget {
  const AimNCC({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 16),
          margin: const EdgeInsets.only(right: 5, top: 10, left: 10),
          constraints: const BoxConstraints(minHeight: 100, maxHeight: 1000),
          decoration: boxDecoration,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              CustomListTile(
                  text:
                      "To Create a Human Resource of Organized, Trained and Motivated Youth, To Provide Leadership in all Walks of life and be Always Available for the Service of the Nation."),
              Divider(),
              SizedBox(height: 4),
              CustomListTile(
                text:
                    "To Provide an Environment conducive to motivating young Indians to Take Up a Career in the Armed Forces.",
              ),
              SizedBox(height: 4),
              Divider(),
              CustomListTile(
                text:
                    "To Develop Character, Comradeship, Discipline, Leadership, Secular Outlook, Spirit of Adventure, and Ideals of Selfless Service amongst the Youth of the Country.",
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CoreNCC extends StatelessWidget {
  const CoreNCC({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      margin: const EdgeInsets.only(left: 10, top: 10, right: 5),
      constraints: const BoxConstraints(minHeight: 100, maxHeight: 1000),
      decoration: boxDecoration,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          CustomListTile(
            text:
                "A sense of patriotic commitment to encourage cadets to contribute to national development.",
          ),
          Divider(),
          SizedBox(height: 4),
          CustomListTile(
            text:
                "Respect for diversities in religion, language, culture, ethnicity, life style and habitat to instill a sense of National unity and social cohesion.",
          ),
          SizedBox(height: 4),
          Divider(),
          CustomListTile(
            text:
                " Abiding commitment to learn and adhere to the norms and values enshrined in the Indian Constitution.",
          ),
          SizedBox(height: 4),
          Divider(),
          CustomListTile(
            text:
                " Understanding the value of a just and impartial exercise of authority.",
          ),
          SizedBox(height: 4),
          Divider(),
          CustomListTile(
            text:
                "Ability to participate in community development and other social programme.",
          ),
          SizedBox(height: 4),
          Divider(),
          CustomListTile(
            text:
                "A healthy life style free of substance abuse and other unhealthy practices.",
          ),
          SizedBox(height: 4),
          Divider(),
          CustomListTile(
            text:
                "Sensitivity to the needs of poor and socially disadvantaged fellow citizens.",
          ),
          SizedBox(height: 4),
          Divider(),
          CustomListTile(
            text: "Inculcating habits of restraint and self-awareness.",
          ),
          SizedBox(height: 4),
          Divider(),
          CustomListTile(
            text:
                "Understanding the values of honesty, truthfulness, self-sacrifice, perseverance and hard work.",
          ),
          SizedBox(height: 4),
          Divider(),
          CustomListTile(
            text: "Respect for knowledge, wisdom and the power of ideas.",
          ),
        ],
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      color: Colors.black,
      fontSize: 15,
    );
    return Row(
      children: [
        const SizedBox(
          width: 16,
        ),
        Icon(
          Icons.arrow_circle_right_outlined,
          color: Colors.grey[500]!,
        ),
        const SizedBox(width: 30),
        Expanded(
          child: SelectableText(
            text,
            style: textStyle,
          ),
        ),
        const SizedBox(width: 16),
      ],
    );
  }
}
