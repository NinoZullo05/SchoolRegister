/*
 * Copyright (c) 2023. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
 * Morbi non lorem porttitor neque feugiat blandit. Ut vitae ipsum eget quam lacinia accumsan.
 * Etiam sed turpis ac ipsum condimentum fringilla. Maecenas magna.
 * Proin dapibus sapien vel ante. Aliquam erat volutpat. Pellentesque sagittis ligula eget metus.
 * Vestibulum commodo. Ut rhoncus gravida arcu.
 */
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:registro/metodi/Metodi.dart';
import 'package:registro/mysql/DBMetodi.dart';

class VInformatica extends StatefulWidget {
  const VInformatica({Key? key}) : super(key: key);

  @override
  State<VInformatica> createState() => _VInformaticaState();
}

class _VInformaticaState extends State<VInformatica> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Informatica",
          style: GoogleFonts.roboto(
            color: Colors.white,
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

        body: Column(
          children: [
             SizedBox(height: 100.h),
             Row(
               children: [
                 //ContainerVoti(Voto: 6, Data: DateTime(), Descrizione: "Verifica su Javascript")
               ],
             )
          ],
        ),


    );
  }
}

void Wvoti(){
  var voti = getVoti();
  //for(var voto in voti){

  //}
}


