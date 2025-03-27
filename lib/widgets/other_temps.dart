import 'package:flutter/material.dart';
import 'package:weather/widgets/weather_detail_widget.dart';

// OtherTemps widget shows temperature details for different times of the day (Morning, Day, Evening, and Night).
class OtherTemps extends StatelessWidget {

  // Variables for temperatures at different times of the day.
  final String morningTemp;
  final String dayTemp;
  final String eveningTemp;
  final String nightTemp;

  const OtherTemps({
    super.key,
    required this.morningTemp,
    required this.dayTemp,
    required this.eveningTemp,
    required this.nightTemp,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 15,
        right: 15,
        bottom: 15,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary, // Background color using theme.
        borderRadius: BorderRadius.circular(30), // Rounded corners.
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Title for the temperature section.
          Text(
            "Other Temps",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 15), // Space below the title.

          // Row displaying temperature details using WeatherDetailWidget for each time of the day.
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Morning temperature with sunrise icon.
              WeatherDetailWidget(
                asset: "assets/icons/sunrise.png",
                value: "$morningTemp°",
                title: "Morning",
                isIcon: false,
                icon: const Icon(Icons.co2), // Placeholder icon (not used).
              ),
              // Day temperature with sun icon.
              WeatherDetailWidget(
                asset: "assets/icons/day.png",
                value: "$dayTemp°",
                title: "Day",
                isIcon: false,
                icon: const Icon(Icons.co2),
              ),
              // Evening temperature with sunset icon.
              WeatherDetailWidget(
                asset: "assets/icons/sunset.png",
                value: "$eveningTemp°",
                title: "Evening",
                isIcon: false,
                icon: const Icon(Icons.co2),
              ),
              // Night temperature with moon icon.
              WeatherDetailWidget(
                asset: "assets/icons/night.png",
                value: "$nightTemp°",
                title: "Night",
                isIcon: false,
                icon: const Icon(Icons.co2),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
