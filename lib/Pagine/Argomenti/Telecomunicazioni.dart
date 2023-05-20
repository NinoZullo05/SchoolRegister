import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:registro/Pagine/Widget/HeaderHeight.dart';
import 'package:registro/metodi/Metodi.dart';

class Telecomunicazioni extends StatelessWidget {
  final double _headerHeight = 100.h;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Telecomunicazioni",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 19.sp,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: _headerHeight,
              child: HeaderWidget(_headerHeight),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h),
              child: IconaD("Salamone Francesco", "Docente"),
            ),
            ContainerArgomenti(
              lessonTitle: 'Principi di telecomunicazioni',
              lessonDate: '02/05/23',
              lessonDescription: 'Introduzione ai principi di telecomunicazioni',
              color: Colors.redAccent,
            ),
            ContainerArgomenti(
              lessonTitle: 'Reti di telecomunicazioni',
              lessonDate: '09/05/23',
              lessonDescription: 'Strutture e funzionamento delle reti di telecomunicazioni',
              color: Colors.blueAccent,
            ),
            ContainerArgomenti(
              lessonTitle: 'Comunicazioni wireless',
              lessonDate: '16/05/23',
              lessonDescription: 'Tecnologie e protocolli delle comunicazioni wireless',
              color: Colors.orangeAccent,
            ),
            ContainerArgomenti(
              lessonTitle: 'Sicurezza delle telecomunicazioni',
              lessonDate: '23/05/23',
              lessonDescription: 'Principi di sicurezza nelle telecomunicazioni',
              color: Colors.greenAccent,
            ),
          ],
        ),
      ),
    );
  }
}
