import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:html' as html;
import 'package:ncc_website/icons.dart';
import 'package:ncc_website/responsive/responsive_layout.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final bool isDesktop = ResponsiveLayout.checkPlatform(context) == 1;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        isDesktop
            ? const Divider(
                endIndent: 0,
              )
            : Container(),
        Container(
          margin: EdgeInsets.only(top: isDesktop ? 0 : 20),
          decoration: BoxDecoration(
            color:
                isDesktop ? Colors.transparent : Colors.grey.withOpacity(0.2),
            // borderRadius: size.width > 1100
            //     ? BorderRadius.circular(10)
            //     : BorderRadius.circular(0),
          ),
          constraints: const BoxConstraints(minHeight: 10, maxHeight: 500),
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 48),
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 25,
              runSpacing: 10,
              children: const [
                SocialBox(
                  appName: 'Facebook',
                  hoverColor: Color.fromRGBO(59, 89, 152, 1),
                  icon: MyFlutterApp.facebook,
                  link: "https://www.facebook.com/nccarmy.annauniv",
                ),
                SocialBox(
                  appName: 'Instagram',
                  hoverColor: Color.fromRGBO(238, 29, 82, 1),
                  icon: MyFlutterApp.instagram,
                  size: 12,
                  link: "https://www.instagram.com/nccarmyannauniv/",
                ),
                SocialBox(
                  appName: 'LinkedIn',
                  hoverColor: Color.fromRGBO(10, 102, 194, 1),
                  icon: MyFlutterApp.linkedin,
                  link:
                      "https://www.linkedin.com/company/ncc-army-anna-university",
                ),
                SocialBox(
                  appName: 'Youtube',
                  hoverColor: Color.fromRGBO(240, 38, 38, 1),
                  icon: MyFlutterApp.youtube,
                  size: 13,
                  link: "https://www.youtube.com/@nccarmyannauniv.5771",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class SocialBox extends StatefulWidget {
  final IconData icon;
  final String appName;
  final Color hoverColor;
  final String link;
  final double size;
  const SocialBox({
    super.key,
    required this.icon,
    required this.appName,
    required this.hoverColor,
    required this.link,
    this.size = 15,
  });

  @override
  State<SocialBox> createState() => _SocialBoxState();
}

class _SocialBoxState extends State<SocialBox> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () => html.window.open(widget.link, "_blank"),
      child: MouseRegion(
        onEnter: (event) {
          setState(() {
            isHover = true;
          });
        },
        onExit: (event) {
          setState(() {
            isHover = false;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          constraints: const BoxConstraints(
            minHeight: 30,
            maxHeight: 50,
            maxWidth: 120,
          ),
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
          decoration: BoxDecoration(
            color: isHover ? widget.hoverColor : Colors.grey[50],
            borderRadius: BorderRadius.circular(width < 600 ? 50 : 6),
            boxShadow: isHover
                ? [
                    const BoxShadow(
                      offset: Offset(0, 0),
                      color: Colors.black54,
                      blurRadius: 5,
                    ),
                  ]
                : [
                    const BoxShadow(
                      offset: Offset(1, 1),
                      color: Colors.black54,
                      blurRadius: 2,
                    ),
                  ],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                widget.icon,
                color: !isHover ? Colors.black87 : Colors.white,
                size: widget.size,
              ),
              width < 600 ? const SizedBox(width: 0) : const SizedBox(width: 8),
              width < 600
                  ? const SizedBox(width: 0)
                  : Text(
                      widget.appName,
                      style: TextStyle(
                        color: !isHover ? Colors.black : Colors.white,
                      ),
                    ),
              width < 600 ? const SizedBox(width: 0) : const SizedBox(width: 4),
            ],
          ),
        ),
      ),
    );
  }
}
