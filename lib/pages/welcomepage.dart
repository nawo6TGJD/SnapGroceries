import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // left-align text
            children: [
              // Center the image
              Center(
                child: Image.asset(
                  "images/splash_screen.png",
                ),
              ),
              const SizedBox(height: 20),
              // Left-aligned text
              const Text(
                "Your Grocery Store",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 106, 104, 104),
                ),
              ),
              const Text(
                "In Your Pocket",
                style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 106, 104, 104),
                ),
              ),
              Text(
                "Fresh groceries, tasty deals, and easy deliverys",
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 106, 105, 105),
                ),
              ),

              CustomPaint(
                size: Size(MediaQuery.of(context).size.width,
                    250), // height of the curve
                painter: TopCurvePainter(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TopCurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.lightBlueAccent;

    Path path = Path();
    path.lineTo(0, size.height * 0.6);

    // Create a curve (like in the UI you shared)
    path.quadraticBezierTo(
      size.width * 0.5, size.height, // control point
      size.width, size.height * 0.6, // end point
    );

    path.lineTo(size.width, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
