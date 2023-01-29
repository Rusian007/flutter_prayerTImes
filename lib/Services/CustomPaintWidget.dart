import 'package:flutter/material.dart';
import 'package:prayertimes/Services/RPSCustomPainterRight.dart';

//Uses the Custompainter and builds a widget

class OurCustomPaintWidget extends StatefulWidget {
  const OurCustomPaintWidget({Key? key, required this.param}) : super(key: key);
  final Map param;

  @override
  State<OurCustomPaintWidget> createState() => _OurCustomPaintWidgetState();
}

class _OurCustomPaintWidgetState extends State<OurCustomPaintWidget> {
  @override
  Widget build(BuildContext context) {


    String fajrTime = widget.param['fajr'];


    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Stack(
          children: [
            CustomPaint(
              size: Size(
                  MediaQuery.of(context).size.width * 0.88,
                  300), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
              painter: RPSCustomPainter(),

            ),
            Positioned(
                left: 200,
                top: 40,
                child: Text(fajrTime,
                  style: TextStyle(
                      fontSize: 21,
                      color: Color(0xffac255e),
                      fontFamily: 'Roboto'
                  ),)
            )
          ],
        ),

      ],
    );
  }
}
