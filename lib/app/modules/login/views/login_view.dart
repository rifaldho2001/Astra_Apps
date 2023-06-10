import 'package:astra_apps/app/controllers/authentication_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final authC = Get.find<AuthenticationController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20.0),
          children: [
            Center(
              child: Text(
                'Login',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: Color.fromRGBO(20, 85, 163, 1),
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'Email',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: Color.fromRGBO(20, 85, 163, 1),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            TextField(
              controller: controller.emailC,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14.0),
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'Password',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: Color.fromRGBO(20, 85, 163, 1),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            TextField(
              controller: controller.passC,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14.0),
                ),
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: Text(
                'Forgot Password?',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: Color.fromRGBO(20, 85, 163, 1),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(
                  Icons.check_box_outline_blank,
                  color: Color.fromRGBO(62, 62, 62, 1),
                ),
                SizedBox(width: 5),
                Text(
                  'Remember Me',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Color.fromRGBO(20, 85, 163, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ElevatedButton(
          onPressed: () => authC.signIn(controller.emailC.text, controller.passC.text),
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromRGBO(20, 85, 163, 1),
            minimumSize: const Size.fromHeight(50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
          ),
          child: const Text('Login'),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
