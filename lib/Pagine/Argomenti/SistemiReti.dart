import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:registro/Pagine/Widget/HeaderHeight.dart';
import 'package:registro/metodi/Metodi.dart';

class SistemiReti extends StatefulWidget {
  const SistemiReti({Key? key}) : super(key: key);

  @override
  State<SistemiReti> createState() => _SistemiRetiState();
}

class _SistemiRetiState extends State<SistemiReti> {
  double _headerHeight = 100.h;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sistemi e Reti",
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
              child: IconaD("Ramponi Dora", "Docente"),
            ),
            ContainerArgomenti(
              lessonTitle: 'Network Topologies',
              lessonDate: '21/02/23',
              lessonDescription: 'Understanding different topologies',
              color: Colors.blueAccent,
            ),
            ContainerArgomenti(
              lessonTitle: 'IP Addressing',
              lessonDate: '22/02/23',
              lessonDescription: 'IPv4 and IPv6 addressing',
              color: Colors.greenAccent,
            ),
            ContainerArgomenti(
              lessonTitle: 'Subnetting',
              lessonDate: '23/02/23',
              lessonDescription: 'Dividing networks into subnets',
              color: Colors.purpleAccent,
            ),
            ContainerArgomenti(
              lessonTitle: 'Routing Protocols',
              lessonDate: '24/02/23',
              lessonDescription: 'Types of routing protocols',
              color: Colors.orangeAccent,
            ),
          ],
        ),
      ),
    );
  }
}
