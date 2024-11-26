import 'package:flutter/material.dart';

class PathProviderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Path Provider"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "معرفی Path Provider",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                "Path Provider به ما کمک می‌کند که مسیرهایی مثل حافظه موقت، پوشه‌ اپلیکیشن، یا پوشه‌ کش را پیدا کنیم. این کتابخانه برای ذخیره‌سازی فایل‌ها یا داده‌های دائمی مفید است.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 30),
              Text(
                "در آینده این صفحه شامل نمونه‌های کاربردی از ذخیره و خواندن فایل‌ها خواهد بود.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
