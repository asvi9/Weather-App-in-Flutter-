import 'package:flutter/material.dart';

import '../widgets/daily_summary.dart';
import '../widgets/frosted_glass_current.dart';
import '../widgets/hourly_weather.dart';
import '../widgets/other_temps.dart';
import '../widgets/rise_set_timings.dart';
import '../widgets/weather_detail_current.dart';

// DayToday widget is a stateless screen that displays detailed weather information using multiple widgets.
class DayToday extends StatelessWidget {

  // Weather-related data fields required for display.
  final String windSpeed;        // Wind speed in the specified unit.
  final String windDegree;       // Wind direction in degrees.
  final String pressure;         // Atmospheric pressure.
  final String uvi;              // UV index value.
  final String humidity;         // Humidity percentage.
  final String visibility;       // Visibility distance.
  final String temp;             // Current temperature.
  final String tempMin;          // Minimum temperature for the day.
  final String tempMax;          // Maximum temperature for the day.
  final String icon;             // Weather icon code.
  final String description;      // Weather description (e.g., Clear, Cloudy).
  final String summary;          // Daily weather summary.
  final String clouds;           // Cloudiness percentage.
  final String dewPoint;         // Dew point temperature.
  final String windGust;         // Wind gust speed.

  // Temperatures for different times of the day.
  final String morningTemp;
  final String dayTemp;
  final String eveningTemp;
  final String nightTemp;

  // Hourly weather data.
  final int length;                          // Number of hourly data points.
  final List<String> hourlyList;             // List of hourly timestamps.
  final List<String> hourlyIconList;         // List of weather icons for each hour.
  final List<String> hourlyTempList;         // List of hourly temperatures.

  // Sunrise, sunset, moonrise, and moonset timings with moon phase information.
  final String sunrise;
  final String sunset;
  final String moonrise;
  final String moonset;
  final String moonPhase;

  // Constructor with all required parameters.
  const DayToday({
    super.key,
    required this.windSpeed,
    required this.windDegree,
    required this.pressure,
    required this.uvi,
    required this.humidity,
    required this.visibility,
    required this.temp,
    required this.tempMin,
    required this.tempMax,
    required this.icon,
    required this.description,
    required this.summary,
    required this.clouds,
    required this.dewPoint,
    required this.windGust,

    required this.morningTemp,
    required this.dayTemp,
    required this.eveningTemp,
    required this.nightTemp,

    required this.length,
    required this.hourlyList,
    required this.hourlyIconList,
    required this.hourlyTempList,

    required this.sunrise,
    required this.sunset,
    required this.moonrise,
    required this.moonset,
    required this.moonPhase,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( // Allows vertical scrolling if content exceeds screen size.
        child: Column(
          children: [
            // Display current temperature and weather info using frosted glass effect.
            FrostedGlassCurrent(
              temp: temp,
              tempMin: tempMin,
              tempMax: tempMax,
              icon: icon,
              description: description,
            ),

            // Display daily weather summary.
            DailySummary(
              summary: summary,
            ),

            // Show temperature details for morning, day, evening, and night.
            OtherTemps(
              morningTemp: morningTemp,
              dayTemp: dayTemp,
              eveningTemp: eveningTemp,
              nightTemp: nightTemp,
            ),

            // Show additional weather details like wind speed, humidity, visibility, etc.
            WeatherDetailsCurrent(
              windSpeed: windSpeed,
              windDegree: windDegree,
              pressure: pressure,
              uvi: uvi,
              humidity: humidity,
              visibility: visibility,
              clouds: clouds,
              dewPoint: dewPoint,
              windGust: windGust,
            ),

            // Display hourly weather data using a horizontal list.
            HourlyWeather(
              length: length,
              hourlyList: hourlyList,
              hourlyIconList: hourlyIconList,
              hourlyTempList: hourlyTempList,
            ),

            // Show sunrise, sunset, moonrise, and moonset timings along with moon phase.
            RiseSetTimings(
              sunrise: sunrise,
              sunset: sunset,
              moonrise: moonrise,
              moonset: moonset,
              moonPhase: moonPhase,
            ),
          ],
        ),
      ),
    );
  }
}
