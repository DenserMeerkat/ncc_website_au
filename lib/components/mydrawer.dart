import 'package:flutter/material.dart';
import 'package:ncc_website/components/web_menu.dart';

class MyDrawer extends StatelessWidget {
  final Size size;
  const MyDrawer({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: size.width > 1100
            ? [
                const BoxShadow(
                  color: Colors.grey,
                  offset: Offset(1, 0),
                  blurRadius: 3,
                ),
              ]
            : [],
      ),
      child: Drawer(
        shadowColor: Colors.grey[800],
        backgroundColor: Colors.grey[200],
        surfaceTintColor: Colors.grey[300],
        width: 290,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topLeft,
                children: [
                  ClipRRect(
                    borderRadius:
                        const BorderRadius.only(topRight: Radius.circular(10)),
                    child: DrawerHeader(
                      decoration: BoxDecoration(color: Colors.grey[300]),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                SizedBox(
                                  width: 38,
                                  child:
                                      Image.asset("assets/images/ncc_logo.png"),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    FittedBox(
                                      child: SelectableText(
                                        "National Cadet Corps",
                                        style: TextStyle(
                                          //color: Colors.white,
                                          fontSize: 17,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    SelectableText(
                                      "Anna University",
                                      style: TextStyle(
                                        //color: Colors.white70,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  size.width < 1100
                      ? Container(
                          height: 40,
                          margin: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(1, 1),
                                color: Colors.grey[400]!,
                              )
                            ],
                          ),
                          child: FilledButton.tonalIcon(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            style: ButtonStyle(
                                shadowColor: const MaterialStatePropertyAll(
                                    Colors.black),
                                foregroundColor: const MaterialStatePropertyAll(
                                    Colors.black),
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.grey[400])),
                            label: const Text("Back"),
                            icon: const Icon(
                              Icons.arrow_back_ios,
                              size: 15,
                            ),
                          ),
                        )
                      : const SizedBox(),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              WebMenu(),
            ],
          ),
        ),
      ),
    );
  }
}
