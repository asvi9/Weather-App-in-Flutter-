import 'package:flutter/material.dart';

// FrostedGlass widget displays a styled weather information card with a frosted glass effect.
class FrostedGlass extends StatelessWidget {

  final double borderRadius; // Border radius for rounded corners.
  final String tempMin; // Minimum temperature value.
  final String tempMax; // Maximum temperature value.
  final String icon; // Weather icon name (from assets).
  final String description; // Weather description.

  const FrostedGlass({
    Key? key,
    this.borderRadius = 30.0, // Default border radius is set to 30.0.
    required this.tempMin,
    required this.tempMax,
    required this.icon,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect( // Clipping the container with rounded corners.
      borderRadius: BorderRadius.circular(borderRadius),
      child: Container(
        padding: const EdgeInsets.all(5), // Padding inside the container.
        margin: const EdgeInsets.all(10), // Margin around the container.
        width: double.infinity, // Takes full width of the parent.
        height: 150, // Fixed height for the container.
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius), // Applying border radius.
          color: Theme.of(context).colorScheme.secondary, // Background color from theme's secondary color.
        ),
        child: Center(
          child: Row( // Displaying content in a horizontal row.
            mainAxisAlignment: MainAxisAlignment.spaceAround, // Equal spacing around children.
            children: [
              // Displaying weather icon using Image.asset.
              Image.asset(
                "assets/weather/$icon.png", // Path to the weather icon from assets.
                width: 100,
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10), // Padding above the text.
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center, // Aligning content vertically in the center.
                  children: [
                    // Displaying weather description.
                    Text(
                      description,
                      style: Theme.of(context).textTheme.headlineLarge, // Applying headline style from theme.
                    ),
                    const SizedBox(height: 10), // Adding vertical spacing.
                    // Displaying min and max temperatures.
                    Text(
                      "Min: $tempMin°\nMax: $tempMax°",
                      style: Theme.of(context).textTheme.headlineLarge, // Applying headline style from theme.
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
