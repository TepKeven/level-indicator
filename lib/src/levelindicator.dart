import "package:flutter/material.dart";


class LevelIndicator extends StatefulWidget {

  LevelIndicator({
    Key? key,
    this.width = 10,
    this.height = 20,
    this.top = 0,
    this.right = 0,
    this.bottom = 0,
    this.left = 0,
    this.borderRadius = 0.0,
    this.direction = Axis.horizontal,
    this.reverse = false,
    this.itemCount = 1,
    this.acitveItem = 1,
    this.activeColor = Colors.amber,
    this.inactiveColor = Colors.white,


  });

  
  final double? width;
  final double? height;
  final double  top;
  final double  right;
  final double  bottom;
  final double  left;
  final double borderRadius;
  final Axis direction;
  final bool reverse;
  final int  itemCount;
  final int? acitveItem;
  final Color? activeColor;
  final Color? inactiveColor;



  

  @override
  _LevelIndicatorState createState() => _LevelIndicatorState();
}

class _LevelIndicatorState extends State<LevelIndicator> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.direction == Axis.vertical ? widget.width : (widget.width !* widget.itemCount + ((widget.left + widget.right) * widget.itemCount)),
      height: widget.direction == Axis.vertical ? (widget.height !* widget.itemCount + ((widget.top + widget.bottom) * widget.itemCount)) : widget.height,
      child: ListView.builder(
              key: widget.key,
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: widget.direction,
              shrinkWrap: true,
              reverse: widget.reverse,
              itemCount: widget.itemCount,
              itemBuilder: (context, i) {
                  return Container(
                      margin: EdgeInsets.only(top: widget.top,right:widget.right,bottom: widget.bottom,left:widget.left),
                      width: widget.width, 
                      height: widget.height,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(widget.borderRadius),
                        color:i <= (widget.acitveItem! - 1) ? widget.activeColor : widget.inactiveColor)
                      );
                  },
              ),
    );
  }
}