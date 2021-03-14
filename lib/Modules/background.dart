import 'package:flutter/material.dart';

class BackgroundPainter extends CustomPainter {
  final Paint yellowPaint;
  final Paint bluePaint;
  final Paint grayPaint;
  BackgroundPainter()
      : bluePaint = Paint()
          ..color = Colors.lightBlue[200]
          ..style = PaintingStyle.fill,
        grayPaint = Paint()
          ..color = Colors.blueGrey[300]
          ..style = PaintingStyle.fill,
        yellowPaint = Paint()
          ..color = Colors.yellow[600]
          ..style = PaintingStyle.fill;
  @override
  void paint(Canvas canvas, Size size) {
    paintBlue(size, canvas);
    paintGray(size, canvas);
    paintYellow(size, canvas);
  }

  void paintBlue(Size size, Canvas canvas) {
    final path = Path();
    path.moveTo(size.width, 0);
    path.lineTo(0, 0);
    path.quadraticBezierTo(
        size.width * 0.7, size.height * 0.8, size.width, size.height * 0.6);
    canvas.drawPath(path, bluePaint);
  }

  void paintGray(Size size, Canvas canvas) {
    final path = Path();
    path.moveTo(size.width, 0);
    path.lineTo(0, 0);
    path.lineTo(0, size.height * 0.5);
    path.quadraticBezierTo(
        size.width * 0.5, size.height * 0.8, size.width, size.height * 0.2);
    canvas.drawPath(path, grayPaint);
  }

  void paintYellow(Size size, Canvas canvas) {
    final path = Path();
    path.moveTo(size.width, 0);
    path.lineTo(0, 0);
    path.lineTo(0, size.height * 0.2);
    path.quadraticBezierTo(
        size.width * 0.5, size.height * 0.8, size.width, size.height * 0.15);
    canvas.drawPath(path, yellowPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
