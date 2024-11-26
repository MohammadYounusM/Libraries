import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF121212),
        appBar: AppBar(
          title: Text("بازکردن وبسایت"),
          backgroundColor: Colors.yellow,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "این صفحه به کاربران امکان می‌دهد با استفاده از این دکمه، یک وب‌سایت را در مرورگر باز کنند. این قابلیت با استفاده از کتابخانه قدرتمند url_launcher پیاده‌سازی شده است که برای باز کردن لینک‌ها، شماره‌گیری، ارسال ایمیل و ... در برنامه‌های Flutter استفاده می‌شود.",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
              // دکمه برای باز کردن سایت
              ElevatedButton(
                onPressed: () {
                  _launchURL("https://pub.dev/packages/url_launcher");
                },
                child: Text(
                  "باز کردن",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF2962FF),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  // تابع برای باز کردن URL
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'آدرس باز نمی‌شود: $url';
    }
  }
}
