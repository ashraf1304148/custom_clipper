import 'package:custom_clipper/widgets/wave_widget.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight * .25,
      width: screenWidth,
      child: Stack(
        children: [
          Opacity(
            opacity: .5,
            child: WaveWidget(
              backGroundColor: Colors.deepOrangeAccent,
              height: screenHeight * .24,
              type: 1,
            ),
          ),
          WaveWidget(
            backGroundColor: Colors.red,
            height: screenHeight * .22,
            type: 1,
          ),
          WaveWidget(
            backGroundColor: Colors.blue,
            height: screenHeight * .1,
            type: 2,
          ),
        ],
      ),
    );
  }
}
