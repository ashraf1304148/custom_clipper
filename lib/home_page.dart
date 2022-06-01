import 'package:custom_clipper/widgets/header_widget.dart';
import 'package:custom_clipper/widgets/in_prorogress_linear_widget.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("Wave Clipper Design"),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          HeaderWidget(),
          SizedBox(
            height: 10,
          ),
          Center(
            child: CircularPercentIndicator(
              radius: 90,
              percent: .7,
              // backgroundColor: Colors.blue,
              progressColor: Colors.red,
              lineWidth: 15,
              animation: true,
              animationDuration: 1500,
              circularStrokeCap: CircularStrokeCap.round,
              center: Text("70 %", style: TextStyle(fontSize: 25)),
              footer: Text("Order this month",
                  style:
                      TextStyle(fontSize: 25, color: Colors.deepOrangeAccent)),
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: LinearPercentIndicator(
              width: screenWidth * .6,
              percent: .5,
              // backgroundColor: Colors.blue,
              progressColor: Colors.red,
              lineHeight: 20,
              animation: true,
              animationDuration: 1500,
              linearStrokeCap: LinearStrokeCap.roundAll,
              center: Text("50 %", style: TextStyle(fontSize: 18)),
              leading: Text("left side",
                  style:
                      TextStyle(fontSize: 18, color: Colors.deepOrangeAccent)),
              trailing: Text("right side",
                  style:
                      TextStyle(fontSize: 18, color: Colors.deepOrangeAccent)),
            ),
          ),
        ],
      ),
    );
  }
}
