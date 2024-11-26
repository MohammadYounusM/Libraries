import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  String city = "Herat"; // نام پیش‌فرض شهر
  String weather = "اطلاعاتی وجود ندارد."; // وضعیت هوا
  String temp = "--"; // دما

  Future<void> fetchWeather() async {
    final apiKey = "e5c25e901c238bd6515d4baa888ef992"; // کلید API خودت را اینجا وارد کن
    final url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey&units=metric');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      setState(() {
        weather = data['weather'][0]['description']; // وضعیت آب‌وهوا
        temp = data['main']['temp'].toString(); // دما
      });
    } else {
      setState(() {
        weather = "خطا در دریافت اطلاعات!";
        temp = "--";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("آب‌وهوا"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "شهر: $city",
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
              SizedBox(height: 20),
              Text(
                "وضعیت: $weather",
                style: TextStyle(fontSize: 20, color: Colors.teal),
              ),
              SizedBox(height: 10),
              Text(
                "دمای فعلی: $temp° C",
                style: TextStyle(fontSize: 20, color: Colors.redAccent),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: fetchWeather,
                child: Text("دریافت وضعیت هوا"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
