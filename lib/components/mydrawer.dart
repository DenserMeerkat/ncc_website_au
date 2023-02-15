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
    return Drawer(
      backgroundColor: Colors.white,
      width: 290,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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
                    decoration: BoxDecoration(color: Colors.grey[100]),
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
                                width: 40,
                                child:
                                    Image.asset("assets/images/ncc_logo.png"),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  Text(
                                    "National Cadet Corps",
                                    style: TextStyle(
                                      //color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Anna University",
                                    style: TextStyle(
                                      //color: Colors.white70,
                                      fontSize: 15,
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
                              shadowColor:
                                  const MaterialStatePropertyAll(Colors.black),
                              foregroundColor:
                                  const MaterialStatePropertyAll(Colors.black),
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.grey[350])),
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
    );
  }
}
