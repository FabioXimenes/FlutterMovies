import 'package:flutter/material.dart';

class WatchButtonWidget extends StatelessWidget {
  final Function onTap;

  const WatchButtonWidget({Key key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: 75,
          height: 30,
          decoration: BoxDecoration(
              color: Colors.yellow.withOpacity(0.85),
              borderRadius: BorderRadius.circular(3)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Watch',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              Icon(Icons.play_arrow, size: 18, color: Colors.black)
            ],
          )),
    );
  }
}
