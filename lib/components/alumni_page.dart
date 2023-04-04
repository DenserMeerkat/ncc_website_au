import 'package:flutter/material.dart';
import 'package:ncc_website/components/common.dart';
import 'package:ncc_website/components/footer.dart';
import 'package:ncc_website/resources/batch.dart';
import 'package:ncc_website/resources/carousel.dart';

import '../constants.dart';

class AlumniPage extends StatefulWidget {
  const AlumniPage({super.key});

  @override
  State<AlumniPage> createState() => _AlumniPageState();
}

class _AlumniPageState extends State<AlumniPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Batch> batches = BatchBrains.batches;
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
              icon: Icons.school_rounded,
              title: "  Alumni ",
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: size.width * 0.04),
              child: const TitleText(
                title: "Associate NCC Officers",
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
                  name: "Maj. Rajendra Boopathy S",
                  plat: "EME Platoon",
                  rank: "Captain",
                  rankColor: Colors.redAccent[100],
                  imgUrl: 'assets/images/Maj_Rajendra_Boopathy_S.jpg',
                ),
                DisplayCard(
                  name: "Lt. Dr. Sivanesan",
                  plat: "Signals Platoon",
                  rank: "Lieutenant",
                  rankColor: Colors.redAccent[100],
                  imgUrl: 'assets/images/Lt_Dr_Sivanesan.jpg',
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(),
            BatchCards(batch: batches[0]),
            BatchCards(batch: batches[1]),
            BatchCards(batch: batches[2]),
            const SizedBox(height: 50),
            const Footer(),
          ],
        ),
      ),
    );
  }
}

class BatchCards extends StatelessWidget {
  final Batch batch;
  const BatchCards({super.key, required this.batch});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.only(left: size.width * 0.04),
          child: TitleText(
            title: batch.year,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Center(
          child: DisplayCard(
            imgUrl: batch.csuo.img,
            name: batch.csuo.name,
            plat: batch.csuo.plat,
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
              imgUrl: batch.cuo1.img,
              name: batch.cuo1.name,
              plat: batch.cuo1.plat,
              rank: "Cadet Under Officer",
              rankColor: Colors.deepOrange[300],
            ),
            DisplayCard(
              imgUrl: batch.cuo2.img,
              name: batch.cuo2.name,
              plat: batch.cuo2.plat,
              rank: "Cadet Under Officer",
              rankColor: Colors.deepOrange[300],
            ),
            DisplayCard(
              imgUrl: batch.cuo3.img,
              name: batch.cuo3.name,
              plat: batch.cuo3.plat,
              rank: "Cadet Under Officer",
              rankColor: Colors.deepOrange[300],
            ),
          ],
        ),
        const SizedBox(height: 30),
        Wrap(
          spacing: 18,
          runSpacing: 18,
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            DisplayCard(
              imgUrl: batch.cqms.img,
              name: batch.cqms.name,
              plat: batch.cqms.plat,
              rank: "Company Quarter Master Sergeant",
              rankColor: Colors.green[300],
            ),
            DisplayCard(
              imgUrl: batch.csm.img,
              name: batch.csm.name,
              plat: batch.csm.plat,
              rank: "Company Sergeant Major",
              rankColor: Colors.green[300],
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        const Divider(),
      ],
    );
  }
}
