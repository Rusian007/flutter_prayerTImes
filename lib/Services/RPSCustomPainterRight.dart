import 'package:flutter/material.dart';


// Draws the paint
class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {

    const Gradient newGradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment(0.8, 1),
      colors: <Color>[
        Color(0xff1f005c),
        Color(0xff5b0060),
        Color(0xff870160),
        Color(0xffac255e),
        Color(0xffca485c),
        Color(0xffe16b5c),
        Color(0xfff39060),
        Color(0xffffb56b),
      ], // Gradient from https://learnui.design/tools/gradient-generator.html
      tileMode: TileMode.mirror,
    );



    Paint paint0 = Paint()
     // ..color = Colors.black
      ..shader = newGradient
          .createShader(Rect.fromLTWH(0.0, 0.0, size.width, size.height))
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10;


    Path path0 = Path();

    path0.moveTo(size.width*0.2037407,size.height*0.0153143);
    path0.lineTo(size.width,size.height*0.0083000);
    path0.lineTo(size.width*0.9993519,size.height*0.3659857);
    path0.lineTo(size.width*0.2037407,size.height*0.3625143);
    path0.quadraticBezierTo(size.width*0.0947685,size.height*0.3489286,size.width*0.0941759,size.height*0.1928571);
    path0.quadraticBezierTo(size.width*0.0942315,size.height*0.0201143,size.width*0.2037407,size.height*0.0153143);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}