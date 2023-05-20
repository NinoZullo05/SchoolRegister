import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:registro/Pagine/Widget/HeaderHeight.dart';
import 'package:registro/metodi/Metodi.dart';

class Italiano extends StatefulWidget {
  const Italiano({Key? key}) : super(key: key);

  @override
  State<Italiano> createState() => _ItalianoState();
}

class _ItalianoState extends State<Italiano> {
  double _headerHeight = 100.h;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Italiano",
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
              child: IconaD("Emanuela Grandi", "Docente"),
            ),
            ContainerArgomenti(
              lessonTitle: 'Analisi del testo',
              lessonDate: '20/02/23',
              lessonDescription: 'Analisi del testo narrativo',
              color: Colors.blueAccent,
            ),
            ContainerArgomenti(
              lessonTitle: 'Poesia',
              lessonDate: '21/02/23',
              lessonDescription: 'Studiare le figure retoriche',
              color: Colors.greenAccent,
            ),
            ContainerArgomenti(
              lessonTitle: 'Grammatica',
              lessonDate: '22/02/23',
              lessonDescription: 'Approfondimento sui complementi',
              color: Colors.purpleAccent,
            ),
            ContainerArgomenti(
              lessonTitle: 'Letteratura',
              lessonDate: '23/02/23',
              lessonDescription: 'Studio di autori contemporanei',
              color: Colors.orangeAccent,
            ),
          ],
        ),
      ),
    );
  }
}
