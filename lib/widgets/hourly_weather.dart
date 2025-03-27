import 'package:flutter/material.dart';

// HourlyWeather widget displays a horizontal list of weather data for each hour.
class HourlyWeather extends StatelessWidget {

  final int length; // Number of hourly data points.

  final List<String> hourlyList; // List of hour labels (e.g., "10 AM", "11 AM").
  final List<String> hourlyIconList; // List of weather icon names.
  final List<String> hourlyTempList; // List of temperatures for each hour.

  const HourlyWeather({
    super.key,
    required this.length,
    required this.hourlyList,
    required this.hourlyIconList,
    required this.hourlyTempList,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 150, // Fixed height for the hourly weather container.
      margin: const EdgeInsets.only(left: 15, right: 15, bottom: 15), // Adds margin on sides and bottom.
      child: ListView.builder(
        scrollDirection: Axis.horizontal, // Allows horizontal scrolling.
        itemCount: length, // Number of items based on provided length.
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 10), // Adds space between items.
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5), // Padding for internal spacing.
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), // Rounds the corners.
              color: Theme.of(context).colorScheme.secondary, // Background color using theme.
            ),
            width: 80, // Fixed width for each hourly weather item.
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround, // Distributes elements with even spacing.
              children: [
                // Displays the hour label (e.g., "10 AM").
                Text(
                  hourlyList[index],
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 5), // Spacing between hour label and icon.

                // Displays the weather icon using the icon name from the assets.
                Image.asset(
                  "assets/weather/${hourlyIconList[index]}.png",
                  width: 30,
                ),
                const SizedBox(height: 5), // Spacing between icon and temperature.

                // Displays the hourly temperature with a degree symbol.
                Text(
                  "${hourlyTempList[index]}°",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
