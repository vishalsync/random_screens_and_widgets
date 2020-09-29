import 'package:flutter/material.dart';




class RatingWidget extends StatefulWidget {
  
  final int totalStar;
  final Function totalRating;
  final double iconSize;

  RatingWidget({
    this.totalStar = 5, 
    @required this.totalRating,
    this.iconSize = 20.0
  });
 
  @override
  _RatingWidgetState createState() => _RatingWidgetState();
}

class _RatingWidgetState extends State<RatingWidget> {

  int _totalRated = 0;

  List<Widget> _starBuilder() {
    final List<Widget> starList = [];
    for (int i=1; i<= widget.totalStar; i++ ) {
      starList.add(
        GestureDetector(
          onTap: () {
            setState(() {
              _totalRated = _totalRated == i ? i - 1 : i;
              widget.totalRating(_totalRated);
            });
          },
          child: Icon(
            Icons.star,
            color: _totalRated >= i ? Colors.orange : null,
            size: widget.iconSize,
          ),
        )
      );
    }

    return starList;

  }


  @override
  Widget build(BuildContext context) {
    return Row(
      children: _starBuilder(),
    );
  }
}