import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white, // Added background color
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialIcon(
                  assetPath: 'images/github.svg',
                  iconColor: Color.fromARGB(255, 8, 8, 8),
                  size: 100,
                  margin: EdgeInsets.only(bottom: 35, right: 15),
                ),
                SocialIcon(
                  assetPath: 'images/facebook.svg',
                  iconColor: Color.fromARGB(255, 29, 54, 237),
                  size: 75,
                  margin: EdgeInsets.only(bottom: 35),
                  borderColor: Color.fromARGB(255, 13, 141, 196),
                  borderWidth: 2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SocialIcon extends StatelessWidget {
  final String assetPath;
  final EdgeInsets margin;
  final double size;
  final Color iconColor;
  final Color? borderColor;
  final double? borderWidth;

  const SocialIcon({
    required this.assetPath,
    required this.margin,
    required this.size,
    required this.iconColor,
    this.borderColor,
    this.borderWidth,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: const EdgeInsets.all(10),
      decoration: borderColor != null
          ? BoxDecoration(
              border: Border.all(color: borderColor!, width: borderWidth ?? 2),
              shape: BoxShape.circle,
            )
          : null,
      child: SvgPicture.asset(
        assetPath,
        color: iconColor,
        height: size,
      ),
    );
  }
}
