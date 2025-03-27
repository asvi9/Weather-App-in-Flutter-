import 'package:flutter/material.dart';
import '../theme/pallete.dart';

// Loader widget shows a loading indicator with an optional error message.
class Loader extends StatelessWidget {

  final String? error; // Error message (nullable).
  final bool isError; // Flag to indicate whether there is an error.

  const Loader({
    super.key,
    required this.isError,
    required this.error,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primary, // Background color using theme.
      height: double.infinity, // Takes full height of the screen.
      width: double.infinity, // Takes full width of the screen.
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Centers the content vertically.
        children: [
          // Displays a cloud icon as a part of the loading animation.
          Image.asset(
            "assets/icons/clouds.png",
            width: 100,
          ),
          const SizedBox(height: 20), // Adds space between image and loader.

          // Circular progress indicator for loading animation.
          const CircularProgressIndicator(
            color: PalleteLight.iconColor, // Uses custom color from theme palette.
          ),
          const SizedBox(height: 20), // Space between loader and error message.

          // If there is an error, display the error message; otherwise, show nothing.
          isError
              ? Text(
            error!,
            style: Theme.of(context).textTheme.bodyMedium,
          )
              : const SizedBox(), // Empty space when there is no error.
        ],
      ),
    );
  }
}
