import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:infinite_carousel/infinite_carousel.dart';

class InfoCards extends StatefulWidget {
  @override
  State<InfoCards> createState() => _InfoCardsState();
}

class _InfoCardsState extends State<InfoCards> {
  List<String> json = ["Asad", "awdawdeas", "WDUIUGDW", "UDWHUIaw"];
  late InfiniteScrollController _controller;
  int _selectedIndex = 0;
  @override
  void initState() {
    super.initState();
    _controller = InfiniteScrollController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InfiniteCarousel.builder(
      itemExtent: 150,
      center: false,
      onIndexChanged: (index) {
        if (_selectedIndex != index) {
          setState(() {
            _selectedIndex = index;
          });
        }
      },
      controller: _controller,
      axisDirection: Axis.horizontal,
      loop: true,
      physics: InfiniteScrollPhysics(),
      itemBuilder: (context, itemIndex, realIndex) {
        return GestureDetector(
          onTap: () {
            _controller.animateToItem(realIndex);
          },
          child: Container(
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
            ),
            child: Card(
                color: const Color.fromRGBO(255, 255, 255, 0.5),
                child: TextButton(
                  onPressed: () {},
                  child: Stack(children: [
                    Image.asset("images/uvce.png"),
                    Text(
                      json[itemIndex],
                      textAlign: TextAlign.center,
                      textScaleFactor: 1.5,
                      style: const TextStyle(color: Colors.black),
                    ),
                  ]
                  ),
                )
            ),
          ),
        );
      },
      itemCount: json.length,
    );
  }
}
