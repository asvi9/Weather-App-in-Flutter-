import 'package:flutter/material.dart';

// WeatherDetailWidget ek reusable widget hai jo ek icon ya image, value aur title ko vertically display karta hai.
class WeatherDetailWidget extends StatelessWidget {

  // Yeh variables widget ke parameters store karte hain.
  final String asset; // Image asset ka path jab icon use na ho.
  final String value; // Weather ki value, jaise temperature ya humidity.
  final String title; // Weather detail ka title, jaise "Wind Speed" ya "Humidity".
  final Icon icon; // Icon widget jab image asset ka use na ho.
  final bool isIcon; // Decide karta hai ki asset image dikhaana hai ya icon.

  // Constructor parameters initialize karta hai.
  const WeatherDetailWidget({
    super.key,
    required this.asset,
    required this.value,
    required this.title,
    required this.isIcon,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Agar isIcon true hai to Icon dikhaayega, warna Image asset dikhaayega.
        isIcon
            ? icon
            : Image.asset(
          asset,
          color: Theme.of(context).iconTheme.color, // Theme ke hisaab se icon ka color.
          width: 30, // Fixed width for the image.
        ),
        const SizedBox(height: 5), // Vertical space between elements.

        // Weather value display karta hai.
        Text(
          value,
          style: Theme.of(context).textTheme.bodyMedium, // Theme ke bodyMedium style ka use karta hai.
        ),
        const SizedBox(height: 5),

        // Weather title display karta hai.
        Text(
          title,
          style: Theme.of(context).textTheme.bodySmall, // Theme ke bodySmall style ka use karta hai.
        ),
      ],
    );
  }
}
