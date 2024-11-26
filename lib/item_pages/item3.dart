import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MaterialApp(home: Three()));

class Three extends StatefulWidget {
  @override
  _ThreeState createState() => _ThreeState();
}

class _ThreeState extends State<Three> {
  String _storedText = ""; // برای نمایش متن ذخیره‌شده
  TextEditingController _controller =
      TextEditingController(); // کنترل TextField

  // تابع برای ذخیره متن در SharedPreferences
  Future<void> _saveText() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('daily_note', _controller.text); // ذخیره متن
    setState(() {
      _storedText = _controller.text; // به‌روزرسانی متن نمایش داده‌شده
    });
    _controller.clear(); // پاک کردن TextField
  }

  // تابع برای خواندن متن ذخیره‌شده از SharedPreferences
  Future<void> _loadText() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _storedText = prefs.getString('daily_note') ??
          "هیچ متنی ذخیره نشده است!"; // خواندن متن
    });
  }

  @override
  void initState() {
    super.initState();
    _loadText(); // بارگذاری متن ذخیره‌شده هنگام شروع برنامه
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("خاطره روزانه"),
        backgroundColor: Colors.deepPurple,
        leading: IconButton(
          // دکمه برگشت
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // بازگشت به صفحه قبلی
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "متن ذخیره‌شده:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              _storedText,
              style: TextStyle(fontSize: 24, color: Colors.black),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: "متن خود را وارد کنید",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _saveText,
              child: Text("ذخیره متن", style: TextStyle(color: Colors.green)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                textStyle: TextStyle(fontSize: 23, color: Colors.yellow),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
