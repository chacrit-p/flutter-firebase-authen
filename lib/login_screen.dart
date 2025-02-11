import 'package:flutter/material.dart';
import 'sign_in_screen.dart';  
import 'sign_up_screen.dart';  
import 'forgot_password_screen.dart'; 

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("เข้าสู่ระบบ")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const SignInScreen()), // ไปที่หน้าล็อกอิน
                );
              },
              child: const Text("เข้าสู่ระบบ"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ForgotPasswordScreen()), // ไปที่หน้าลืมรหัสผ่าน
                );
              },
              child: const Text("ลืมรหัสผ่าน"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const SignUpScreen()), // ไปที่หน้าสร้างแอคเคาท์
                );
              },
              child: const Text("สร้างแอคเคาท์ใหม่"),
            ),
          ],
        ),
      ),
    );
  }
}
