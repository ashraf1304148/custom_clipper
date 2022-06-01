import 'package:flutter/material.dart';

class InProgressLinearWidget extends StatefulWidget {
  double width, height;
  final Color backgroundColor, frontColor;

  double percent;
  InProgressLinearWidget(
      {this.backgroundColor = const Color.fromARGB(255, 218, 190, 192),
      this.frontColor = Colors.red,
      required this.width,
      this.height = 0,
      required this.percent,
      Key? key})
      : super(key: key);

  @override
  State<InProgressLinearWidget> createState() => _InProgressLinearWidgetState();
}

class _InProgressLinearWidgetState extends State<InProgressLinearWidget> {
  @override
  Widget build(BuildContext context) {
    widget.height = (widget.height <= 0)
        ? MediaQuery.of(context).size.height / 30
        : widget.height;
    // print("total: " + (widget.width * widget.persent).toString());

    return Stack(
      children: [
        Container(
          width: widget.width,
          height: widget.height,
          decoration: BoxDecoration(
            color: widget.backgroundColor,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Container(
          width: widget.width * widget.percent / 100,
          height: widget.height,
          decoration: BoxDecoration(
            color: widget.frontColor,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Container(
          width: widget.width,
          height: widget.height,
          child: Center(
            child: Text(
              "${widget.percent} %",
              style: TextStyle(
                color: Colors.white,
                fontSize: widget.height * .8,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
