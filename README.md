# weather

A new Flutter project.

# Weather App Flutter 

The Weather App Flutter - Main is a cross-platform mobile application built with Flutter and Dart.
It offers users real-time weather information, including current weather conditions,
hourly forecasts for the next 48 hours, and a daily forecast for the next 8 days.
By using geolocation services, it provides weather updates based on the user's live location. 
The app also supports smooth animations and both light and dark theme options for a 
better user experience.

# 🌟 Features

Live Weather Information: Get accurate and up-to-date weather data. Hourly Forecast: Detailed 
forecast for the next 48 hours. Daily Forecast: Weather predictions for the next 8 days.
Location-Based Updates: Fetches weather data based on your current location. Cross-Platform Support:
Available on both Android and iOS. Smooth Animations: Enhanced user experience with sleek animations.
Light & Dark Mode: Customize the appearance to suit your preference.

# 🛠️ Tech Stack

    Client: Flutter, Dart
    Packages: geocoding, geolocator, http, intl

# 🌐 API Reference

    The app uses the API Ninjas Weather API to fetch real-time weather data.
    Endpoint: API Ninjas Weather API

# Required Parameter:

apiKey (string) - .

To get your API key, visit API Ninjas and sign up.

# API Configuration

    -- Check the configuration in lib/api/api_ninjas_weather_api.dart:

class ApiNinjasWeatherAPI {
String apiKey = '';

String apiUrl(double lat, double lon) {
return 'https://api.api-ninjas.com/v1/weather?lat=$lat&lon=$lon&appid=$apiKey';
}
}

# 🚀 Getting Started

# Clone the repository:

   -- git clone https://github.com/asvi9/Weather-App-in-Flutter-.git

# Navigate to the project directory:

   -- cd weather_app_flutter

# Install dependencies:

   -- flutter pub get

# Configure your API key in lib/api/api_ninjas_weather_api.dart.

# Run the app:

  -- flutter run

# 📦 Additional Notes

  Ensure you have Flutter installed. Follow the Flutter installation guide.

  For Android development, install Android Studio and set up the required SDKs.

  For iOS development, use Xcode on macOS.

# apk file path: 
     StudioProjects\weather\build\app\outputs\flutter-apk\app-release.apk 