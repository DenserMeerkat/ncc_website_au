import 'package:flutter/material.dart';
import 'package:ncc_website/constants.dart';
import 'package:ncc_website/resources/events.dart';
import 'package:responsive_grid/responsive_grid.dart';

class TitleText extends StatelessWidget {
  final String title;
  const TitleText({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(width: size.width * 0.015),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.grey[300],
              boxShadow: const [
                BoxShadow(
                    color: Colors.grey, offset: Offset(2, 2), blurRadius: 3),
              ]
              // gradient: LinearGradient(
              //   colors: [
              //     Colors.grey[200]!,
              //     Colors.grey[300]!,
              //     Colors.grey[300]!,
              //     Colors.grey[300]!,
              //     Colors.grey[300]!,
              //     Colors.grey[200]!,
              //   ],
              // ),
              ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(width: 10),
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
              const SizedBox(width: 4),
            ],
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
              fontSize: 20,
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
        ResponsiveGridList(
          shrinkWrap: true,
          scroll: false,
          desiredItemWidth: 390,
          minSpacing: 20,
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
                                child:
                                    Image.asset("assets/images/ncc_logo.png"))),
                        const SizedBox(width: 5),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              constraints: const BoxConstraints(minWidth: 380, maxWidth: 450),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TitleText(
                    title: size.width < 500
                        ? "DG's 4 Cardinal \nPrincipals of Discipline"
                        : "DG's 4 Cardinal Principals of Discipline",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: const EdgeInsets.all(8),
                    padding: const EdgeInsets.all(8),
                    decoration: boxDecoration,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        SizedBox(height: 4),
                        CustomListTile(text: "Obey with a smile."),
                        Divider(),
                        SizedBox(height: 4),
                        CustomListTile(text: "Be Punctual."),
                        Divider(),
                        CustomListTile(text: "Work hard and without fuss."),
                        SizedBox(height: 4),
                        Divider(),
                        CustomListTile(
                            text: "Make no excuses and tell no lies."),
                        SizedBox(height: 4),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                TitleText(title: "Aim of NCC"),
                SizedBox(height: 5),
                AimNCC(),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                TitleText(title: "Core Values of NCC"),
                SizedBox(height: 5),
                CoreNCC(),
              ],
            ),
          ],
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
      constraints: const BoxConstraints(minHeight: 100, maxHeight: 20000),
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

class DisplayCard extends StatefulWidget {
  final String plat;
  final String name;
  final String? rank;
  final Color? rankColor;
  final String? imgUrl;
  const DisplayCard({
    super.key,
    required this.plat,
    required this.name,
    this.rank,
    this.rankColor = Colors.redAccent,
    this.imgUrl,
  });
  @override
  State<DisplayCard> createState() => _DisplayCardState();
}

class _DisplayCardState extends State<DisplayCard> {
  late double scale = 1.0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          scale = 1.05;
        });
      },
      onExit: (event) {
        setState(() {
          scale = 1;
        });
      },
      child: AnimatedContainer(
        transformAlignment: Alignment.center,
        transform: Matrix4.identity()..scale(scale),
        duration: const Duration(milliseconds: 100),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              padding:
                  EdgeInsets.fromLTRB(8, widget.rank == null ? 8 : 36, 8, 8),
              constraints:
                  BoxConstraints(maxHeight: widget.rank == null ? 220 : 250),
              decoration: boxDecoration,
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: widget.imgUrl != null
                            ? Container(
                                height: 180,
                                width: 120,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  // boxShadow: [
                                  //   BoxShadow(color: Colors.grey,blurRadius: 3)
                                  // ]
                                ),
                                child: Image.asset(
                                  widget.imgUrl!,
                                  fit: BoxFit.fitHeight,
                                ),
                              )
                            : const Placeholder(
                                fallbackHeight: 180,
                                fallbackWidth: 120,
                              ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      SizedBox(
                        width: size.width < 400 ? 160 : 190,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50)),
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 2),
                                decoration: BoxDecoration(
                                    color: Colors.lightBlueAccent[100],
                                    border: Border.all(
                                        color: Colors.lightBlueAccent),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Text(
                                  widget.plat,
                                  style: const TextStyle(
                                      fontSize: 11,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Text(
                              widget.name,
                              style: Theme.of(context).textTheme.labelLarge,
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Text(
                              "Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups",
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            const Spacer(),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            widget.rank != null
                ? Positioned(
                    top: 0,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 16),
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(10)),
                        color: widget.rankColor,
                      ),
                      child: Center(
                          child: Text(
                        widget.rank!,
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            letterSpacing: 1,
                            shadows: [
                              const Shadow(
                                color: Colors.black,
                                offset: Offset(2, 1),
                                blurRadius: 2,
                              ),
                            ]),
                      )),
                    ),
                  )
                : const SizedBox(),
          ],
        ),
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
