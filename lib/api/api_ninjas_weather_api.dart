class OpenWeatherAPI {
  String apiKey = ''; // Variable to store the API key, which is required for authentication.

  String apiUrl(double lat, double lon) {
    // This function generates the API URL using latitude (lat) and longitude (lon) values.
    // It constructs a URL with the given coordinates and API key for the API request.
    return 'https://api.api-ninjas.com/v1/weather?lat=$lat&lon=$lon&appid=$apiKey';
  }
}
