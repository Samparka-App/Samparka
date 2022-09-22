import 'package:flutter/material.dart';
import 'package:infinite_carousel/infinite_carousel.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _buildHeading("Title", context),
          SizedBox(
            height: 30,
          ),
          SizedBox(height:MediaQuery.of(context).size.height/3.5,child: InfoTiles())
        ],
      ),
    );
  }

  Widget _buildHeading(String title, BuildContext context) {
    return Container(
      child: Text(title, textScaleFactor: 2),
      width: MediaQuery.of(context).size.width / 1.5,
      decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(45.0),
              bottomRight: Radius.circular(45.0))),
      padding: const EdgeInsets.only(left: 30, top: 15, bottom: 15),
    );
  }
}

class InfoTiles extends StatefulWidget {
  @override
  State<InfoTiles> createState() => _InfoTilesState();
}

class _InfoTilesState extends State<InfoTiles> {
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
      itemExtent: 100,
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
              width:50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                ),
              child:Card(child: Text(json[itemIndex],style: TextStyle(color: Colors.black),),color:Colors.white
              ),
            ),
        );
      },
      itemCount: json.length,
    );
  }
}
