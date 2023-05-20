import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:registro/Pagine/Widget/HeaderHeight.dart';
import 'package:registro/metodi/Metodi.dart';
class Matematica extends StatefulWidget {
  const Matematica({Key? key}) : super(key: key);
  @override
  State<Matematica> createState() => _MatematicaState();
}
class _MatematicaState extends State<Matematica> {
  double _headerHeight = 100.h;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Matematica",
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
              child: IconaD("Silvia Severgnini", "Docente"),
            ),
            ContainerArgomenti(
              lessonTitle: 'Teorema di de l\'hopital',
              lessonDate: '19/02/23',
              lessonDescription: 'Siano date 2 funzioni f(x) e g(x) tal',
              color: Colors.redAccent,
            ),
            ContainerArgomenti(
              lessonTitle: 'Derivate',
              lessonDate: '18/02/23',
              lessonDescription:
                  'Spiegazione derivata prima e derivata seconda',
              color: Colors.orangeAccent,
            ),
            ContainerArgomenti(
              lessonTitle: 'Manzoni',
              lessonDate: '19/02/23',
              lessonDescription: 'Lezione su Manzoni pagina 273-274',
              color: Colors.yellowAccent,
            ),
            ContainerArgomenti(
              lessonTitle: 'Manzoni',
              lessonDate: '19/02/23',
              lessonDescription: 'Lezione su Manzoni pagina 273-274',
              color: Colors.lightGreenAccent,
            ),
          ],
        ),
      ),
    );
  }
}
