import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:registro/Pagine/Widget/HeaderHeight.dart';
import 'package:registro/metodi/Metodi.dart';

class Informatica extends StatelessWidget {
  final double _headerHeight = 100.h;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Informatica",
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
              child: IconaD("Vailati Massimo","Docente"),
            ),
            ContainerArgomenti(
              lessonTitle: 'Introduzione all\'informatica',
              lessonDate: '05/04/23',
              lessonDescription: 'Principi fondamentali dell\'informatica',
              color: Colors.blueAccent,
            ),
            ContainerArgomenti(
              lessonTitle: 'Algoritmi e strutture dati',
              lessonDate: '12/04/23',
              lessonDescription: 'Algoritmi di base e strutture dati',
              color: Colors.orangeAccent,
            ),
            ContainerArgomenti(
              lessonTitle: 'Basi di dati',
              lessonDate: '19/04/23',
              lessonDescription: 'Concetti fondamentali delle basi di dati',
              color: Colors.greenAccent,
            ),
            ContainerArgomenti(
              lessonTitle: 'Programmazione ad oggetti',
              lessonDate: '26/04/23',
              lessonDescription: 'Principi della programmazione ad oggetti',
              color: Colors.purpleAccent,
            ),
          ],
        ),
      ),
    );
  }
}
