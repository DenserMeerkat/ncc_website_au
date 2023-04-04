import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import '../../controllers/menucontroller.dart';

class WebMenu extends StatelessWidget {
  WebMenu({super.key});
  final MenuController1 _controller = Get.put(MenuController1());

  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context).location.toString();
    Map<int, String> routeIndex = {
      0: '/',
      1: '/about',
      2: '/events',
      3: '/gallery',
      4: '/alumni',
    };
    _controller.setMenuIndex(
        routeIndex.keys.firstWhere((element) => routeIndex[element] == router));
    return Obx(
      () => Column(
        children: List.generate(
          _controller.menuItems.length,
          (index) => WebMenuItem(
            icon: index == _controller.selectedIndex
                ? _controller.menuIconsFilled[index]
                : _controller.menuIcons[index],
            text: _controller.menuItems[index],
            isActive: routeIndex[index] == router,
            press: () {
              _controller.setMenuIndex(index);
              switch (index) {
                case 0:
                  return context.go('/');
                case 1:
                  return context.go('/about');
                case 2:
                  return context.go('/events');
                case 3:
                  return context.go('/gallery');
                case 4:
                  return context.go('/alumni');
                default:
                  return context.go('/');
              }
            },
          ),
        ),
      ),
    );
  }
}

class MenuChanged extends Notification {
  final int index;
  MenuChanged(
    this.index,
  );
}

class WebMenuItem extends StatefulWidget {
  final IconData icon;
  const WebMenuItem({
    Key? key,
    required this.isActive,
    required this.text,
    required this.icon,
    required this.press,
  }) : super(key: key);

  final bool isActive;
  final String text;
  final VoidCallback press;

  @override
  State<WebMenuItem> createState() => _WebMenuItemState();
}

class _WebMenuItemState extends State<WebMenuItem> {
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.press,
      onHover: (value) {
        if (!widget.isActive) {
          setState(() {
            _isHover = value;
          });
        }
      },
      child: ListTile(
        focusColor: Colors.white60,
        hoverColor: Colors.white60,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: widget.isActive ? Colors.grey[300] : Colors.transparent,
        leading: Icon(
          widget.icon,
        ),
        trailing: widget.isActive
            ? const Icon(
                Icons.radio_button_checked,
                size: 18,
              )
            : const SizedBox(
                width: 10,
              ),
        iconColor: Colors.black,
        title: Text(
          widget.text,
          style: const TextStyle(
            fontSize: 16,
            letterSpacing: 1,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
