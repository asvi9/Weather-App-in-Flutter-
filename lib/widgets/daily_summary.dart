import 'package:flutter/material.dart';

// DailySummary widget displays a weather summary inside a styled container.
class DailySummary extends StatelessWidget {

  final String summary; // Weather summary text.

  const DailySummary({
    super.key,
    required this.summary, // Required summary string to display.
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Container takes the full width of the screen.
      margin: const EdgeInsets.only( // Outer margin for spacing.
        top: 5,
        left: 15,
        right: 15,
        bottom: 15,
      ),
      padding: const EdgeInsets.all(20), // Inner padding for content spacing.
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary, // Background color using theme's secondary color.
        borderRadius: BorderRadius.circular(15), // Rounded corners with a radius of 15.
      ),
      child: Center(
        child: Text(
          summary, // Displaying the weather summary text.
          style: Theme.of(context).textTheme.bodyMedium, // Applying medium-sized body text style from the theme.
        ),
      ),
    );
  }
}
