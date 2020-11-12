import 'package:flutter/material.dart';

class PageDotsWidget extends StatelessWidget {
  final int currentIndex;
  final int pageCount;
  final Color focusColor;

  const PageDotsWidget(
      {Key key, this.currentIndex, this.pageCount, this.focusColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.center,
      height: 20,
      width: 10.0 * pageCount - 5.0,
      child: ListView.builder(
        itemCount: pageCount,
        scrollDirection: Axis.horizontal,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (_, index) {
          return AnimatedContainer(
            duration: Duration(milliseconds: 300),
            margin: EdgeInsets.only(right: 5),
            height: 5,
            width: 5,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: currentIndex == index ? focusColor : Colors.yellow[100],
            ),
          );
        },
      ),
    );
  }
}
