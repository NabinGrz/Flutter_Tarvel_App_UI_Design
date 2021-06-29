import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyIconsBar extends StatefulWidget {
  const MyIconsBar({Key? key}) : super(key: key);

  @override
  _MyIconsBarState createState() => _MyIconsBarState();
}

class _MyIconsBarState extends State<MyIconsBar>
    with SingleTickerProviderStateMixin {
  List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.biking,
  ];

  late AnimationController _animationController;
  late Animation _animationContainer;
  late Animation _animationIcon;

  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 900));
    _animationController.forward();

    _animationContainer =
        Tween<double>(begin: 0, end: 60).animate(_animationController)
          ..addListener(() {
            setState(() {});
          });

    _animationIcon =
        Tween<double>(begin: 0, end: 25).animate(_animationController)
          ..addListener(() {
            setState(() {});
          });

    super.initState();
  }

  Widget _buildIcon(int index) {
    return ScaleTransition(
      alignment: Alignment.center,
      scale: CurvedAnimation(
          parent: _animationController, curve: Curves.fastOutSlowIn),
      child: Container(
        height: _animationContainer.value,
        width: _animationContainer.value,
        decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                  color: Color(0xFFACECE1),
                  blurRadius: 20,
                  spreadRadius: 3,
                  offset: Offset(4, 5))
            ]),
        child: Icon(
          _icons[index],
          size: _animationIcon.value,
          color: Color(0xFF0395F7),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: _icons
            .asMap()
            .entries
            .map(
              (MapEntry map) => _buildIcon(map.key),
            )
            .toList(),
      ),
    );
  }
}
