import 'package:flutter/material.dart';

/// Header Menus
/// Speakers - Blue
/// Agenda - Red
/// Partners - yellow
/// FAQ - green

/// Animated Hover Item for expanded header
class HeaderItem extends StatefulWidget {
  final Color hoverColor;
  final Color lableColor;
  final String lable;
  final Function onTap;

  const HeaderItem({
    super.key,
    required this.hoverColor,
    required this.lable,
    required this.lableColor,
    required this.onTap,
  });

  @override
  State<HeaderItem> createState() => _HeaderItemState();
}

class _HeaderItemState extends State<HeaderItem>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;
  late Color textColor;
  double radius = 50.0;

  @override
  void initState() {
    super.initState();
    textColor = widget.lableColor;

    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));

    _animation = Tween(begin: 0.0, end: 500.0)
        .animate(CurvedAnimation(curve: Curves.easeIn, parent: _controller))
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
        child: InkWell(
          onTap: widget.onTap(),
          onHover: (value) {
            if (value) {
              _controller.forward();
              setState(() {
                textColor = Colors.white;
              });
            } else {
              _controller.reverse();
              setState(() {
                textColor = widget.hoverColor;
              });
            }
          },
          child: Stack(
            children: [
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      color: widget.hoverColor,
                      borderRadius: BorderRadius.circular(radius)),
                  width: _animation.value,
                ),
              ),
              Center(
                child: AnimatedDefaultTextStyle(
                  style: TextStyle(color: textColor),
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                  child: Text(widget.lable),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
