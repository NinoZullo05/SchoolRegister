import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:registro/Pagine/Widget/HeaderHeight.dart';

class Assenze extends StatefulWidget {
  const Assenze({Key? key}) : super(key: key);

  @override
  State<Assenze> createState() => _AssenzeState();
}

class _AssenzeState extends State<Assenze> {
  List<String> assenzeGiustificate = [
    '02/03/2023',
    '19/02/2023',
    //TODO : Canto fai in modo che prenda i dati dal database
  ];

  List<String> assenzeNonGiustificate = [
    '02/03/2023',
    '19/02/2023',
    //TODO : Canto fai in modo che prenda i dati dal database
  ];
  final double _headerHeight = 100.h;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Assenze"),
        centerTitle: true,
      ),
      body: Column(
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
          SizedBox(height: 20.h),
          SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'Assenze giustificate:',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 8.h),
                Container(
                  constraints: BoxConstraints(
                    maxHeight:
                        265.h,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: assenzeGiustificate.map((assenza) {
                        return ListTile(
                          leading: const CircleAvatar(
                            backgroundColor: Colors.green,
                          ),
                          title: Text(
                            assenza,
                            style: TextStyle(
                                fontSize: 18.sp, color: Colors.black),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                SizedBox(height: 16.h),
                Text(
                  'Assenze non giustificate:',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 8.h),
                Container(
                  constraints: BoxConstraints(
                    maxHeight:
                        265.h,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: assenzeNonGiustificate.map((assenza) {
                        return ListTile(
                          leading: const CircleAvatar(
                            backgroundColor: Colors.red,
                          ),
                          title: Text(
                            assenza,
                            style:
                                TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
