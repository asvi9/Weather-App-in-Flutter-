import 'package:flutter/material.dart';

// FrostedGlassCurrent widget displays the current weather details with a frosted glass effect.
class FrostedGlassCurrent extends StatelessWidget {

  final double borderRadius; // Border radius for rounded corners.

  final String temp; // Current temperature.
  final String tempMin; // Minimum temperature.
  final String tempMax; // Maximum temperature.

  final String icon; // Weather icon name (from assets).
  final String description; // Weather description.

  const FrostedGlassCurrent({
    Key? key,
    this.borderRadius = 30.0, // Default border radius is set to 30.0.
    required this.temp,
    required this.tempMin,
    required this.tempMax,
    required this.icon,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect( // Rounds the corners using the provided border radius.
      borderRadius: BorderRadius.circular(borderRadius),
      child: Container(
        padding: const EdgeInsets.all(5), // Adds padding inside the container.
        margin: const EdgeInsets.all(10), // Adds margin around the container.
        width: double.infinity, // Takes the full available width.
        height: 150, // Fixed height.
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius), // Rounded corners using border radius.
          color: Theme.of(context).colorScheme.secondary, // Uses the theme's secondary color as background.
        ),
        child: Center(
          child: Row( // Arranges the children horizontally.
            mainAxisAlignment: MainAxisAlignment.spaceAround, // Distributes space evenly around the children.
            children: [
              // Displays the weather icon using an asset image.
              Image.asset(
                "assets/weather/$icon.png",
                width: 100,
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10), // Adds padding at the top for alignment.
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center, // Centers the content vertically.
                  children: [
                    Row(
                      children: [
                        // Displays the weather description.
                        Text(
                          description,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        const SizedBox(width: 10), // Adds horizontal spacing.
                        // Displays the min and max temperatures.
                        Text(
                          "$tempMin°/$tempMax°",
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontSize: 14, // Customizes the font size to 14.
                          ),
                        ),
                      ],
                    ),
                    // Displays the current temperature using a large font.
                    Text(
                      "$temp°",
                      style: Theme.of(context).textTheme.displayLarge,
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
