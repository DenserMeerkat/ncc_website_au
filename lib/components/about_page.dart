import 'package:flutter/material.dart';
import 'package:ncc_website/components/common.dart';
import 'package:ncc_website/components/footer.dart';
import 'package:ncc_website/resources/carousel.dart';

import '../constants.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: defaultBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 20,
            ),
            const PageTitle(
              icon: Icons.info_rounded,
              title: "  About ",
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(),
            // Padding(
            //   padding: EdgeInsets.only(left: size.width * 0.04),
            //   child: const TitleText(
            //     title: "Associate NCC Officers",
            //   ),
            // ),
            const SizedBox(
              height: 30,
            ),
            Wrap(
              spacing: 18,
              runSpacing: 18,
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                DisplayCard(
                  name: "Capt. Dr. A Suresh Babu",
                  plat: "Engineers Platoon",
                  rank: "Captain",
                  rankColor: Colors.redAccent[100],
                  imgUrl: 'assets/images/Capt_Dr_Suresh_Babu_A.jpg',
                ),
                DisplayCard(
                  name: "Lt. Dr. K Padmanabhan Panchu",
                  plat: "EME Platoon",
                  rank: "Lieutenant",
                  rankColor: Colors.redAccent[100],
                  imgUrl: 'assets/images/Lt_Dr_Padmanabhan_Panchu_K.jpg',
                ),
                DisplayCard(
                  name: "Lt. Dr. R Neelakandan",
                  plat: "Signals Platoon",
                  rank: "Lieutenant",
                  rankColor: Colors.redAccent[100],
                  imgUrl: 'assets/images/Lt_Dr_Neelakandan_R.jpg',
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const Divider(),
            // Padding(
            //   padding: EdgeInsets.only(left: size.width * 0.04),
            //   child: const TitleText(
            //     title: "Cadets",
            //   ),
            // ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: DisplayCard(
                name: "CSUO Pramoth Kumar A",
                plat: "Signals Platoon",
                rank: "Cadet Senior Under Officer",
                rankColor: Colors.deepPurple[300],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Wrap(
              spacing: 18,
              runSpacing: 18,
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                DisplayCard(
                  name: "CUO Karen Jerusha J",
                  plat: "Engineers Platoon",
                  rank: "Cadet Under Officer",
                  rankColor: Colors.deepOrange[300],
                ),
                DisplayCard(
                  name: "CUO Reshma S",
                  plat: "EME Platoon",
                  rank: "Cadet Under Officer",
                  rankColor: Colors.deepOrange[300],
                ),
                DisplayCard(
                  name: "CUO Elasukumaran E",
                  plat: "Signals Platoon",
                  rank: "Cadet Under Officer",
                  rankColor: Colors.deepOrange[300],
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Wrap(
              spacing: 18,
              runSpacing: 18,
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                DisplayCard(
                  name: "CQMS Pearlina Marie Rein K",
                  plat: "Signals Platoon",
                  rank: "Company Quarter Master Sergeant",
                  rankColor: Colors.green[300],
                ),
                DisplayCard(
                  name: "CSM Jayaharish M R",
                  plat: "Engineers Platoon",
                  rank: "Company Sergeant Major",
                  rankColor: Colors.green[300],
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Divider(),
            const SizedBox(height: 50),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
