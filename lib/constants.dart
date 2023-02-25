import 'package:flutter/material.dart';
import 'package:ncc_website/components/web_menu.dart';

/*______________COLORS__________________*/

const kPrimaryColor = Color(0xFFFF3B1D);
const kDarkBlackColor = Color(0xFF191919);
const defaultBackgroundColor = Color(0xFFE7E7E7);
const kBodyTextColor = Color(0xFF666666);

const kDefaultPadding = 20.0;
const kDefaultDuration = Duration(milliseconds: 250);

/*______________WIDGETS__________________*/
class MyAppbar extends StatelessWidget {
  const MyAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

var boxDecoration = BoxDecoration(
  color: Colors.white.withOpacity(0.8),
  borderRadius: BorderRadius.circular(10),
  boxShadow: [
    BoxShadow(
        color: Colors.grey[400]!, offset: const Offset(1, 1), blurRadius: 5),
  ],
);
var myAppBar = AppBar(
  backgroundColor: Colors.grey[100],
  surfaceTintColor: Colors.grey[100],
  shadowColor: Colors.black,
  elevation: 4,
  title: Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      SizedBox(
        width: 25,
        child: Image.asset("assets/images/ncc_logo.png"),
      ),
      const SizedBox(
        width: 15,
      ),
      const SelectableText(
        "NCC | Anna University",
        style: TextStyle(
          fontSize: 16,
          color: Colors.black,
          letterSpacing: 0.5,
          fontWeight: FontWeight.bold,
        ),
      )
    ],
  ),
  centerTitle: true,
  leading: Builder(
    builder: (BuildContext context) {
      return IconButton(
        splashRadius: 20.0,
        icon: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        tooltip: "Open Drawer",
      );
    },
  ),
);

extension StringExtension on String {
  /// Truncate a string if it's longer than [maxLength] and add an [ellipsis].
  String truncate(int maxLength, [String ellipsis = "…"]) => length > maxLength
      ? '${substring(0, maxLength - ellipsis.length)}$ellipsis'
      : this;
}
