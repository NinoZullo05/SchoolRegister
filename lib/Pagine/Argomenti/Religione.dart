import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:registro/Pagine/Widget/HeaderHeight.dart';
import 'package:registro/metodi/Metodi.dart';

class Religione extends StatelessWidget {
  final double _headerHeight = 100.h;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Religione",
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
              child: IconaD("Mario Bertoletti", "Docente"),
            ),
            ContainerArgomenti(
              lessonTitle: 'Storia delle religioni',
              lessonDate: '10/03/23',
              lessonDescription: 'Un viaggio nella storia delle principali religioni',
              color: Colors.blueAccent,
            ),
            ContainerArgomenti(
              lessonTitle: 'I valori religiosi',
              lessonDate: '17/03/23',
              lessonDescription: 'Riflessioni sui valori etici e morali delle diverse religioni',
              color: Colors.orangeAccent,
            ),
            ContainerArgomenti(
              lessonTitle: 'Riti e celebrazioni',
              lessonDate: '24/03/23',
              lessonDescription: 'Conoscere i riti e le celebrazioni delle varie religioni',
              color: Colors.purpleAccent,
            ),
            ContainerArgomenti(
              lessonTitle: 'Dialogo interreligioso',
              lessonDate: '31/03/23',
              lessonDescription: 'Promuovere il dialogo e la comprensione tra le diverse religioni',
              color: Colors.greenAccent,
            ),
          ],
        ),
      ),
    );
  }
}
