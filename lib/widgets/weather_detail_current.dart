import 'package:flutter/material.dart';
import 'package:weather/widgets/weather_detail_widget.dart';

// WeatherDetailsCurrent widget displays detailed weather information including wind speed, pressure, humidity, and other parameters.
class WeatherDetailsCurrent extends StatelessWidget {

  // Variables to store the respective weather details.
  final String windSpeed;
  final String windDegree;
  final String pressure;
  final String uvi;
  final String humidity;
  final String visibility;
  final String clouds;
  final String dewPoint;
  final String windGust;

  // Constructor to initialize all the required values.
  const WeatherDetailsCurrent({
    super.key,
    required this.windSpeed,
    required this.windDegree,
    required this.pressure,
    required this.uvi,
    required this.humidity,
    required this.visibility,
    required this.clouds,
    required this.dewPoint,
    required this.windGust,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350, // Fixed height for the container.
      margin: const EdgeInsets.only(left: 15, right: 15, bottom: 15), // Adds margin for spacing.
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10), // Adds padding inside the container.
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary, // Background color from theme.
        borderRadius: BorderRadius.circular(30), // Rounded corners.
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Evenly distributes the rows.
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // First row displaying wind speed, wind degree, and pressure using WeatherDetailWidget.
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              WeatherDetailWidget(
                asset: "assets/icons/windspeed.png", // Wind speed icon.
                value: windSpeed, // Wind speed value.
                title: "Wind Speed", // Title for the value.
                isIcon: false, // Using image asset instead of icon.
                icon: const Icon(Icons.add), // Placeholder icon (not used).
              ),
              WeatherDetailWidget(
                asset: "assets/icons/winddegree.png", // Wind degree icon.
                value: windDegree,
                title: "Wind Degree",
                isIcon: false,
                icon: const Icon(Icons.add),
              ),
              WeatherDetailWidget(
                asset: "assets/icons/pressure.png", // Pressure icon.
                value: pressure,
                title: "Pressure",
                isIcon: false,
                icon: const Icon(Icons.add),
              ),
            ],
          ),
          // Second row displaying UV Index, humidity, and visibility using WeatherDetailWidget.
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              WeatherDetailWidget(
                asset: "", // No asset for UV Index, using an icon instead.
                value: uvi,
                title: "UV Index",
                isIcon: true,
                icon: const Icon(Icons.sunny), // Sun icon for UV Index.
              ),
              WeatherDetailWidget(
                asset: "assets/icons/humidity.png", // Humidity icon.
                value: humidity,
                title: "Humidity",
                isIcon: false,
                icon: const Icon(Icons.add),
              ),
              WeatherDetailWidget(
                asset: "", // No asset for Visibility, using an icon instead.
                value: visibility,
                title: "Visibility",
                isIcon: true,
                icon: const Icon(Icons.visibility_outlined), // Visibility icon.
              ),
            ],
          ),
          // Third row displaying clouds, dew point, and wind gust using WeatherDetailWidget.
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              WeatherDetailWidget(
                asset: "assets/icons/clouds.png", // Clouds icon.
                value: clouds,
                title: "Clouds",
                isIcon: false,
                icon: const Icon(Icons.sunny),
              ),
              WeatherDetailWidget(
                asset: "", // No asset for Dew Point, using an icon instead.
                value: dewPoint,
                title: "Dew Point",
                isIcon: true,
                icon: const Icon(Icons.dew_point), // Custom icon (needs proper implementation).
              ),
              WeatherDetailWidget(
                asset: "", // No asset for Wind Gust, using an icon instead.
                value: windGust,
                title: "Wind Gust",
                isIcon: true,
                icon: const Icon(Icons.wind_power_rounded), // Wind gust icon.
              ),
            ],
          ),
        ],
      ),
    );
  }
}
