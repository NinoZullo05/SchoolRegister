import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:registro/Pagine/Argomenti/EdCivica.dart';
import 'package:registro/Pagine/Argomenti/EdFisica.dart';
import 'package:registro/Pagine/Argomenti/Informatica.dart';
import 'package:registro/Pagine/Argomenti/Inglese.dart';
import 'package:registro/Pagine/Argomenti/Italiano.dart';
import 'package:registro/Pagine/Argomenti/Matematica.dart';
import 'package:registro/Pagine/Argomenti/Religione.dart';
import 'package:registro/Pagine/Argomenti/SistemiReti.dart';
import 'package:registro/Pagine/Argomenti/TecnologieInformatiche.dart';
import 'package:registro/Pagine/Argomenti/Telecomunicazioni.dart';
import 'package:registro/Pagine/Voti/VInformatica.dart';
import 'package:registro/Pagine/Widget/HeaderHeight.dart';
import 'package:registro/metodi/Metodi.dart';
class Voti extends StatefulWidget {
  const Voti({Key? key}) : super(key: key);

  @override
  State<Voti> createState() => _VotiState();
}

class _VotiState extends State<Voti> {
  final String assetName = 'assets/image.svg';
  final double _headerHeight = 100.h;
  final EdgeInsetsGeometry _rowPadding =
  EdgeInsets.only(top: 30.h, left: 15.h, right: 10.h);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Voti"),
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
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40.r,
                    backgroundColor: Colors.deepPurple,
                    child: Icon(
                      Icons.person,
                      size: 50.sp,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              'Nome Cognome',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              'Studente',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: _rowPadding,
              child: Row(
                children: [
                  ButtonSVG(context, Colors.cyan,
                    'ITALIANO',
                    Italiano(),
                    'assets/icons/Italiano.svg',
                  ),
                  SizedBox(width: 10),
                  ButtonSVG(context, Colors.cyan, "Matematica", Matematica(), "assets/icons/Matematica.svg"),
                ],
              ),
            ),
            Padding(
              padding: _rowPadding,
              child: Row(
                children: [
                  ButtonSVG(context, Colors.cyan, "Inglese", const Inglese(), "assets/icons/Inglese.svg"),
                  SizedBox(width: 10.w),
                  ButtonSVG(context, Colors.cyan, "  Sistemi e \n  reti", const SistemiReti(), "assets/icons/Sistemi.svg"),
                ],
              ),
            ),
            Padding(
              padding: _rowPadding,
              child: Row(
                children: [
                  ButtonSVG(context, Colors.cyan, "Tecn. \nInf.", TecnologieInformatiche(), "assets/icons/Tecnologie.svg"),
                  SizedBox(width: 10.w),
                  ButtonSVG(context, Colors.cyan, "Informatica",  VInformatica(), "assets/icons/Informatica.dart.svg"),
                ],
              ),
            ),
            Padding(
              padding: _rowPadding,
              child: Row(
                children: [
                  ButtonSVG(context, Colors.cyan, "Telecom.", Telecomunicazioni(), "assets/icons/Telecomunicazioni.svg"),
                  SizedBox(width: 10.w),
                  ButtonSVG(context, Colors.cyan, "Ed. Fisica", EducazioneFisica(),"assets/icons/EdFisica.dart.svg"),
                ],
              ),
            ),
            Padding(
              padding: _rowPadding,
              child: Row(
                children: [
                  ButtonSVG(context, Colors.cyan, "Religione", Religione(), "assets/icons/Religione.svg"),
                  SizedBox(width: 10.w),
                  ButtonSVG(context, Colors.cyan, "Educazione \n     Civica", EducazioneCivica(), "assets/icons/EdCivica.svg"),
                ],
              ),
            ), Padding(
              padding: _rowPadding,
              child: Row(
                children: [
                  SizedBox(width: 10.w),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
