import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:registro/Pagine/Widget/HeaderHeight.dart';
import 'package:registro/metodi/Metodi.dart';

class EducazioneFisica extends StatelessWidget {
  final double _headerHeight = 100.h;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Educazione Fisica",
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
              child: IconaD("Marinella Galdi","Docente"),
            ),
            ContainerArgomenti(
              lessonTitle: 'Riscaldamento',
              lessonDate: '05/04/23',
              lessonDescription: 'Esercizi di riscaldamento per l\'attività fisica',
              color: Colors.redAccent,
            ),
            ContainerArgomenti(
              lessonTitle: 'Giochi di squadra',
              lessonDate: '12/04/23',
              lessonDescription: 'Partite e giochi di squadra per migliorare la cooperazione',
              color: Colors.blueAccent,
            ),
            ContainerArgomenti(
              lessonTitle: 'Fitness e allenamento',
              lessonDate: '19/04/23',
              lessonDescription: 'Esercizi di fitness e programmi di allenamento',
              color: Colors.orangeAccent,
            ),
            ContainerArgomenti(
              lessonTitle: 'Ginnastica artistica',
              lessonDate: '26/04/23',
              lessonDescription: 'Esercizi di ginnastica artistica e acrobatica',
              color: Colors.greenAccent,
            ),
          ],
        ),
      ),
    );
  }
}
