import 'package:flutter/material.dart';

class MyFloatingButton extends StatefulWidget{
 const MyFloatingButton({super.key});
  @override
  State<MyFloatingButton> createState() => _MyFloatingButtonState();
}

class _MyFloatingButtonState extends State<MyFloatingButton> with SingleTickerProviderStateMixin {
  late AnimationController menuAnimation;
  IconData lastTapped = Icons.notifications;
  final List<IconData> menuItems = <IconData>[
  Icons.home,
  Icons.new_releases,
  Icons.notifications,
  Icons.settings,
  Icons.keyboard_arrow_up_sharp,
  ];

  void _updateMenu(IconData icon) {
  if (icon != Icons.menu) {
  setState(() => lastTapped = icon);
  }
  }

  @override
  void initState() {
  super.initState();
  menuAnimation = AnimationController(
  duration: const Duration(milliseconds: 250),
  vsync: this,
  );
  }

  Widget flowMenuItem(IconData icon) {

  return Padding(
  padding: const EdgeInsets.symmetric(vertical: 8.0),
  child: RawMaterialButton(
  fillColor: lastTapped == icon ? Colors.amber[700] : Colors.blue,
  splashColor: Colors.amber[100],
  shape: const CircleBorder(),
  // constraints: BoxConstraints.tight(Size(buttonDiameter, buttonDiameter)),
  onPressed: () {
  _updateMenu(icon);
  menuAnimation.status == AnimationStatus.completed
  ? menuAnimation.reverse()
      : menuAnimation.forward();
  },
  child: Padding(
    padding: const EdgeInsets.all(5.0),
    child: Icon(
    icon,
    color: Colors.white,
    size: 40.0,
    ),
  ),
  ),
  );
  }

  @override
  Widget build(BuildContext context) {
  return Container(
    //backgroundColor: Colors.transparent,

    child: Flow(
    delegate: FlowMenuDelegate(menuAnimation: menuAnimation),
    children:
    menuItems.map<Widget>((IconData icon) => flowMenuItem(icon)).toList(),
    ),
  );
  }
  }

  class FlowMenuDelegate extends FlowDelegate {
    FlowMenuDelegate({required this.menuAnimation})
        : super(repaint: menuAnimation);

    final Animation<double> menuAnimation;

    @override
    bool shouldRepaint(FlowMenuDelegate oldDelegate) {
      return menuAnimation != oldDelegate.menuAnimation;
    }

    @override
    void paintChildren(FlowPaintingContext context) {
      double dy = 0.0;
      for (int i = 0; i < context.childCount; ++i) {

        dy = -(context.getChildSize(i)!.width * i);
        context.paintChild(
          i,
          transform: Matrix4.translationValues(
            0,
            dy * menuAnimation.value,
            0,
          ),
        );
      }
    }
  }


