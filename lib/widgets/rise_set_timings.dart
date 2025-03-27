import 'package:flutter/material.dart';
import 'package:weather/widgets/weather_detail_widget.dart';

// RiseSetTimings widget displays the sunrise, sunset, moonrise, and moonset timings using WeatherDetailWidget.
class RiseSetTimings extends StatelessWidget {

  // Variables to store the respective timings and moon phase.
  final String sunrise;
  final String sunset;
  final String moonrise;
  final String moonset;
  final String moonPhase;

  const RiseSetTimings({
    super.key,
    required this.sunrise,
    required this.sunset,
    required this.moonrise,
    required this.moonset,
    required this.moonPhase,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Occupies full width.
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
          // Row to display the sunrise, sunset, moonrise, and moonset information.
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Sunrise detail with sunrise icon.
              WeatherDetailWidget(
                asset: "assets/icons/sunrise.png",
                value: sunrise,
                title: "Sunrise",
                isIcon: false,
                icon: const Icon(Icons.co2), // Placeholder icon (not used).
              ),
              // Sunset detail with sunset icon.
              WeatherDetailWidget(
                asset: "assets/icons/sunset.png",
                value: sunset,
                title: "Sunset",
                isIcon: false,
                icon: const Icon(Icons.co2),
              ),
              // Moonrise detail with moonrise icon.
              WeatherDetailWidget(
                asset: "assets/icons/moonrise.png",
                value: moonrise,
                title: "Moonrise",
                isIcon: false,
                icon: const Icon(Icons.co2),
              ),
              // Moonset detail with moonset icon.
              WeatherDetailWidget(
                asset: "assets/icons/moonset.png",
                value: moonset,
                title: "Moonset",
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
