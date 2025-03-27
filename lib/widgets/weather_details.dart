import 'package:flutter/material.dart';
import 'package:weather/widgets/weather_detail_widget.dart';

// WeatherDetails ek stateless widget hai jo weather ki details ko vertically 3 rows me dikhata hai.
class WeatherDetails extends StatelessWidget {

  // Yeh variables weather ki different details ko store karte hain.
  final String windSpeed;    // Hawa ki gati
  final String windDegree;   // Hawa ka disha angle
  final String pressure;     // Atmospheric pressure
  final String uvi;          // UV Index
  final String humidity;     // Humidity level
  final String clouds;       // Cloud percentage
  final String dewPoint;     // Dew Point temperature
  final String windGust;     // Wind gust speed

  // Constructor to initialize weather data
  const WeatherDetails({
    super.key,
    required this.windSpeed,
    required this.windDegree,
    required this.pressure,
    required this.uvi,
    required this.humidity,
    required this.clouds,
    required this.dewPoint,
    required this.windGust,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350, // Container ki fixed height
      margin: const EdgeInsets.only(left: 15, right: 15, bottom: 15), // Margin container ke aas paas
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10), // Padding content ke andar
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary, // Theme color ka use
        borderRadius: BorderRadius.circular(30), // Rounded corners
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Pehli row me wind speed, wind degree aur pressure dikhata hai
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              WeatherDetailWidget(
                asset: "assets/icons/windspeed.png",
                value: windSpeed,
                title: "Wind Speed",
                isIcon: false,
                icon: const Icon(Icons.add),
              ),
              WeatherDetailWidget(
                asset: "assets/icons/winddegree.png",
                value: windDegree,
                title: "Wind Degree",
                isIcon: false,
                icon: const Icon(Icons.add),
              ),
              WeatherDetailWidget(
                asset: "assets/icons/pressure.png",
                value: pressure,
                title: "Pressure",
                isIcon: false,
                icon: const Icon(Icons.add),
              ),
            ],
          ),
          // Dusri row me UV index, humidity aur clouds percentage dikhata hai
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              WeatherDetailWidget(
                asset: "",
                value: uvi,
                title: "UV Index",
                isIcon: true,
                icon: const Icon(Icons.sunny),
              ),
              WeatherDetailWidget(
                asset: "assets/icons/humidity.png",
                value: humidity,
                title: "Humidity",
                isIcon: false,
                icon: const Icon(Icons.add),
              ),
              WeatherDetailWidget(
                asset: "assets/icons/clouds.png",
                value: clouds,
                title: "Clouds",
                isIcon: false,
                icon: const Icon(Icons.sunny),
              ),
            ],
          ),
          // Teesri row me dew point aur wind gust dikhata hai
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              WeatherDetailWidget(
                asset: "",
                value: dewPoint,
                title: "Dew Point",
                isIcon: true,
                icon: const Icon(Icons.dew_point),
              ),
              WeatherDetailWidget(
                asset: "",
                value: windGust,
                title: "Wind Gust",
                isIcon: true,
                icon: const Icon(Icons.wind_power_rounded),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
