import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Pagelle extends StatelessWidget {
  const Pagelle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> voti = [
      {"materia": "Italiano", "voto": "6"},
      {"materia": "Matematica", "voto": "6"},
      {"materia": "Inglese", "voto": "7"},
      {"materia": "Sistemi e reti", "voto": "6"},
      {"materia": "Tecnologie informatiche", "voto": "6"},
      {"materia": "Informatica", "voto": "6"},
      {"materia": "Telecomunicazioni", "voto": "6"},
      {"materia": "Ed. fisica", "voto": "6"},
      {"materia": "Religione", "voto": "6"},
      {"materia": "Ed. civica", "voto": "6"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pagelle",
          style: GoogleFonts.roboto(
            fontSize: 20.sp,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.end,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Pagelle",
              style: GoogleFonts.roboto(
                color: Colors.black,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.h),
            for (var voto in voti)
              Row(
                children: [
                  Container(
                    width: 150.w,
                    height: 40.h,
                    color: Colors.grey,
                    child: Center(
                      child: Text(
                        voto["materia"]!,
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Container(
                    width: 80.w,
                    height: 40.h,
                    color: Colors.white,
                    child: Center(
                      child: Text(
                        voto["voto"]!,
                        style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
