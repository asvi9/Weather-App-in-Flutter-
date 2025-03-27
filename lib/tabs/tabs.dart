import 'package:flutter/material.dart';

// Stateless widget named Tabs, used to display a day and a date.
class Tabs extends StatelessWidget {

  // Variables to store day and date values, received via constructor.
  final String day;
  final String date;

  // Constructor to initialize day and date variables.
  const Tabs({
    super.key,
    required this.day,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    // Builds a container with padding for styling.
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20, // Horizontal padding of 20 units.
        vertical: 5,    // Vertical padding of 5 units.
      ),
      child: Column(
        children: [
          // Displays the day using bodyMedium text style from the app's theme.
          Text(
            day,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          // Displays the date using bodySmall text style from the app's theme.
          Text(
            date,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
