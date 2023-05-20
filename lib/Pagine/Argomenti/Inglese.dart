import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:registro/Pagine/Widget/HeaderHeight.dart';
import 'package:registro/metodi/Metodi.dart';

class Inglese extends StatefulWidget {
  const Inglese({Key? key}) : super(key: key);

  @override
  State<Inglese> createState() => _IngleseState();
}

class _IngleseState extends State<Inglese> {
  double _headerHeight = 100.h;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Inglese",
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
              child: IconaD("Fabrizia Ferla","Docente"),
            ),
            ContainerArgomenti(
              lessonTitle: 'Grammar',
              lessonDate: '24/02/23',
              lessonDescription: 'Study of tenses',
              color: Colors.blueAccent,
            ),
            ContainerArgomenti(
              lessonTitle: 'Vocabulary',
              lessonDate: '25/02/23',
              lessonDescription: 'Expansion of word bank',
              color: Colors.greenAccent,
            ),
            ContainerArgomenti(
              lessonTitle: 'Reading Comprehension',
              lessonDate: '26/02/23',
              lessonDescription: 'Analyzing passages',
              color: Colors.purpleAccent,
            ),
            ContainerArgomenti(
              lessonTitle: 'Speaking Practice',
              lessonDate: '27/02/23',
              lessonDescription: 'Improving pronunciation',
              color: Colors.orangeAccent,
            ),
          ],
        ),
      ),
    );
  }
}
