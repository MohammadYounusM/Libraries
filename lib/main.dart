import 'package:flutter/material.dart';
import 'items.dart';

import 'package:flutter_application_3/item_pages/item1.dart';
import 'package:flutter_application_3/item_pages/item2.dart';
import 'package:flutter_application_3/item_pages/item3.dart';
import 'package:flutter_application_3/item_pages/item4.dart';
import 'package:flutter_application_3/item_pages/item5.dart';
import 'package:flutter_application_3/item_pages/item6.dart';
import 'package:flutter_application_3/item_pages/item7.dart';

void main(List<String> args) {
  runApp(home());
}

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/home": (context) => home(),
        "/l1": (context) => WeatherPage(),
        "/l2": (context) => MyApp(),
        "/l3": (context) => Three(),
        "/l4": (context) => SqflitePage(),
        "/l5": (context) => DioPage(),
        "/l6": (context) => GetItPage(),
        "/l7": (context) => PathProviderPage(),
      },
      home: myapp(),
    );
  }
}

class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50, // تغییر رنگ پس زمینه
      // AppBar
      appBar: AppBar(
        title: Text(
          "Library",
          style: TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5, // افکت فاصله بین حروف
          ),
        ),
        backgroundColor: Colors.deepPurpleAccent, // رنگ جدید برای اپ‌بار
        elevation: 10, // اضافه کردن سایه به اپ‌بار
      ),

      // BODY
      body: Padding(
        padding: const EdgeInsets.all(15.0), // فاصله بیشتر برای نمایش بهتر
        child: ListView(
          children: [
            list(context, "آب‌وهوا", "l1"),
            Divider(
              color: Colors.grey.shade400, // رنگ خط افقی
              thickness: 0.8,
            ),

            // Second
            list(context, "بازکردن وبسایت", "l2"),
            Divider(
              color: Colors.grey.shade400,
              thickness: 0.8,
            ),

            // Third
            list(context, "خاطره روزانه", "l3"),
            Divider(
              color: Colors.grey.shade400,
              thickness: 0.8,
            ),

            // Four
            list(context, "مدیریت وضعیت با Provider", "l4"),
            Divider(
              color: Colors.grey.shade400,
              thickness: 0.8,
            ),

            // Fifth
            list(context, "معرفی dio", "l5"),
            Divider(
              color: Colors.grey.shade400,
              thickness: 0.8,
            ),

            // Sixth
            list(context, "معرفی get_it", "l6"),
            Divider(
              color: Colors.grey.shade400,
              thickness: 0.8,
            ),

            // Seven
            list(context, "Path Provider", "l7"),
            Divider(
              color: Colors.grey.shade400,
              thickness: 0.8,
            ),
          ],
        ),
      ),
    );
  }
}
