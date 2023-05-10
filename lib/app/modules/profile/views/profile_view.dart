import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(20.0),
          children: [
            Text(
              'Rivaldhoo',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700
                )
              )
            ),
            Text(
              'Internship',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: Color.fromRGBO(211, 211, 211, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.w700
                )
              )
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                        minimumSize: const Size.fromHeight(50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14)
                        )  
                      ),
                      child: Align(
                        alignment: AlignmentDirectional.bottomStart,
                        child: Row(
                          children: [
                            Icon(
                              Icons.mode_edit_outline,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                            'Internship',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontSize: 14,
                                fontWeight: FontWeight.w500
                              )
                            )
                      ),
                          ],
                        ),
                        )
                    ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                        minimumSize: const Size.fromHeight(50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14)
                        )  
                      ),
                      child: Align(
                        alignment: AlignmentDirectional.bottomStart,
                        child: Row(
                          children: [
                            Icon(
                              Icons.logout_outlined,
                              color: Color.fromRGBO(221, 44, 50, 1),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                            'Logout',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Color.fromRGBO(221, 44, 50, 1),
                                fontSize: 14,
                                fontWeight: FontWeight.w500
                              )
                            )
                      ),
                          ],
                        ),
                        )
                    ),
          ]
        ),
      )
    );
  }
}
