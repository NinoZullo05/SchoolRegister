import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:registro/Pagine/Widget/HeaderHeight.dart';
import 'package:registro/metodi/Metodi.dart';

class EducazioneCivica extends StatelessWidget {
  final double _headerHeight = 100.h;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Educazione Civica",
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
              child: IconaD("4IC","Classe"),
            ),
            ContainerArgomenti(
              lessonTitle: 'I diritti e doveri dei cittadini',
              lessonDate: '05/04/23',
              lessonDescription: 'Conoscere i principali diritti e doveri dei cittadini',
              color: Colors.blueAccent,
            ),
            ContainerArgomenti(
              lessonTitle: 'La democrazia',
              lessonDate: '12/04/23',
              lessonDescription: 'Approfondire il concetto di democrazia e le sue caratteristiche',
              color: Colors.orangeAccent,
            ),
            ContainerArgomenti(
              lessonTitle: 'Partecipazione politica',
              lessonDate: '19/04/23',
              lessonDescription: 'Esplorare le forme di partecipazione politica nella società',
              color: Colors.purpleAccent,
            ),
            ContainerArgomenti(
              lessonTitle: 'Istituzioni democratiche',
              lessonDate: '26/04/23',
              lessonDescription: 'Analizzare il funzionamento delle istituzioni democratiche',
              color: Colors.greenAccent,
            ),
          ],
        ),
      ),
    );
  }
}
