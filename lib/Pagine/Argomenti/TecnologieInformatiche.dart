import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:registro/Pagine/Widget/HeaderHeight.dart';
import 'package:registro/metodi/Metodi.dart';

class TecnologieInformatiche extends StatelessWidget {
  final double _headerHeight = 100.h;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tecnologie Informatiche",
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
              child: IconaD("Cannizzaro alberto", "Docente"),
            ),
            ContainerArgomenti(
              lessonTitle: 'Introduzione alla programmazione',
              lessonDate: '01/03/23',
              lessonDescription: 'Principi fondamentali della programmazione',
              color: Colors.blueAccent,
            ),
            ContainerArgomenti(
              lessonTitle: 'Architettura dei computer',
              lessonDate: '08/03/23',
              lessonDescription: 'Struttura e funzionamento dei computer',
              color: Colors.orangeAccent,
            ),
            ContainerArgomenti(
              lessonTitle: 'Reti di calcolatori',
              lessonDate: '15/03/23',
              lessonDescription: 'Fondamenti delle reti di calcolatori',
              color: Colors.greenAccent,
            ),
            ContainerArgomenti(
              lessonTitle: 'Sistemi operativi',
              lessonDate: '22/03/23',
              lessonDescription: 'Principali concetti dei sistemi operativi',
              color: Colors.purpleAccent,
            ),
          ],
        ),
      ),
    );
  }
}
