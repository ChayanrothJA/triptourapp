import 'package:flutter/material.dart';
import 'register.dart';
import 'forget.dart';
import '../main.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'TripTour',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.start, // จัดตำแหน่งให้ Text อยู่ตรงกลาง
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.start, // ตำแหน่งปุ่มจะอยู่ทางด้านซ้าย
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 0.0), // ระยะห่างทางด้านขวาของปุ่ม
                  child: InkWell(
                    onTap: () {
                      // เพิ่มโค้ดสำหรับเข้าสู่ระบบ
                    },
                    child: Text(
                      'เข้าสู่ระบบ',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                InkWell(
                  onTap: () {
                    // เพิ่มโค้ดสำหรับสมัครสมาชิก
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              RegisterPage()), // RegisterPage() คือหน้าที่คุณต้องไป
                    );
                  },
                  child: Text('สมัครสมาชิก', style: TextStyle(fontSize: 24)),
                ),
              ],
            ),
            SizedBox(height: 5),
            Text('เข้าสู่ระบบเพื่อเข้าใช้งานเเอปพลิเคชั่น Trip Tour',
                style: TextStyle(fontSize: 12)),
            SizedBox(height: 15),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'อีเมล',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'รหัสผ่าน',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // เพิ่มโค้ดสำหรับ Sign in
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          MyApp()), // RegisterPage() คือหน้าที่คุณต้องไป
                );
              },
              child: Text('เข้าสู่ระบบ'),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                // เพิ่มโค้ดสำหรับลืมรหัสผ่าน
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ForgetPage()), // RegisterPage() คือหน้าที่คุณต้องไป
                );
              },
              child: Text('ลืมรหัสผ่าน'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: LoginPage(),
    ),
  );
}
