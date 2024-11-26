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
    final apiKey =
        "e5c25e901c238bd6515d4baa888ef992"; // کلید API خودت را اینجا وارد کن
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
          backgroundColor: Color(0xFF1565C0),
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back),),
        ),
      // color: Color(0xFFE3F2FD),
      backgroundColor: Color(0xFFE3F2FD),
      
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              
              child: Text(
                """ این برنامه اطلاعات آب‌وهوای شهر هرات را نمایش می‌دهد. داده‌ها از طریق API سایت OpenWeatherMap دریافت شده و با استفاده از کتابخانه HTTP پردازش می‌شوند. می‌توانید وضعیت دما، رطوبت، و وضعیت هوا (مانند آسمان صاف یا بارانی) را مشاهده کنید.""",
                style: TextStyle(fontSize: 24, color: Color(0xFF1A237E)),
                textDirection: TextDirection.rtl,
              ),
            ),
            Text(
              "شهر: $city",
              style: TextStyle(fontSize: 24, color: Color(0xFF1A237E)),
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
    );
  }
}
