package wooman.project2.controller;

import java.io.IOException;
import java.io.InputStreamReader;
import java.io.BufferedReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class OpenWeatherMapExample {
    private String temperature;
    private String windSpeed;

    public String getTemperature() {
        return temperature;
    }

    public String getWindSpeed() {
        return windSpeed;
    }

    public void fetchWeatherData() {
        String apiKey = "1c832af858bbfc14862bdcdfed82f525";
        String city = "Seoul";
        String apiUrl = "http://api.openweathermap.org/data/2.5/weather?q=" + city + "&appid=" + apiKey + "&units=metric";

        try {
            URL url = new URL(apiUrl);
            HttpURLConnection connection = (HttpURLConnection) url.openConnection();
            connection.setRequestMethod("GET");

            int responseCode = connection.getResponseCode();
            if (responseCode == HttpURLConnection.HTTP_OK) {
                BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
                StringBuilder response = new StringBuilder();
                String line;

                while ((line = reader.readLine()) != null) {
                    response.append(line);
                }
                reader.close();

                String responseBody = response.toString();

                // API 응답에서 현재 온도 정보 추출
                int tempStartIndex = responseBody.indexOf("\"temp\":") + 7;
                int tempEndIndex = responseBody.indexOf(".", tempStartIndex);
                temperature = responseBody.substring(tempStartIndex, tempEndIndex);

                // API 응답에서 풍속 정보 추출
                int windStartIndex = responseBody.indexOf("\"speed\":") + 8;
                int windEndIndex = responseBody.indexOf(",", windStartIndex);
                windSpeed = responseBody.substring(windStartIndex, windEndIndex);
            } else {
                System.out.println("API 호출 실패: " + responseCode);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        OpenWeatherMapExample example = new OpenWeatherMapExample();
        example.fetchWeatherData();
    }
}