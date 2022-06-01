import 'package:flutter/material.dart';

class WaveWidget extends StatelessWidget {
  final Color backGroundColor;
  final double width, height;
  final int type;

  const WaveWidget(
      {required this.backGroundColor,
      required this.height,
      this.width = 0,
      required this.type,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: WaveClipper(type: type),
      child: Container(
        color: backGroundColor,
        height: height,
        width: width <= 0 ? MediaQuery.of(context).size.width : width,
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  final int type;
  WaveClipper({required this.type});
  @override
  Path getClip(Size size) {
    debugPrint(size.width.toString());
    var path = new Path();
    if (type == 1) {
      path.lineTo(0, size.height);
      //first point
      var firstStart = Offset(size.width * .2, size.height);
      //second point
      var firstEnd = Offset(size.width * .44, size.height * .75);
      path.quadraticBezierTo(
          firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
      //third point
      var secondStart = Offset(size.width * .693, size.height * .5);
      //fourth point
      var secondEnd = Offset(size.width, size.height * .95);
      path.quadraticBezierTo(
          secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
      path.lineTo(size.width, 0);
    }
    if (type == 2) {
      int counter = 15;
      path.lineTo(0, size.height);
      for (int i = 0; i < counter; i++) {
        var firstStart = Offset(i * (size.width / counter), size.height);
        //second point
        var firstEnd = Offset(
            (i * (size.width / counter)) + (size.width / counter / 2),
            size.height / 2);
        path.quadraticBezierTo(
            firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
      }

      path.lineTo(size.width, 0);
    }

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}
