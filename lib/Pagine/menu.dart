import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:registro/Pagine/Annotazioni.dart';
import 'package:registro/Pagine/Argomenti.dart';
import 'package:registro/Pagine/Assenze.dart';
import 'package:registro/Pagine/Calendario.dart';
import 'package:registro/Pagine/HomePage.dart';
import 'package:registro/Pagine/PCTO.dart';
import 'package:registro/Pagine/Pagelle.dart';
import 'package:registro/Pagine/PaginaLogin.dart';
import 'package:registro/Pagine/Profilo.dart';
import 'package:registro/Pagine/Voti.dart';
import 'package:registro/Palette/Palette.dart';
import 'package:registro/metodi/Metodi.dart';
import 'package:registro/Pagine/Widget/HeaderHeight.dart';

class menu extends StatefulWidget {
  const menu({Key? key}) : super(key: key);

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  double _headerHeight = 100.h;
  EdgeInsetsGeometry _rowPadding =
  EdgeInsets.only(top: 30.h, left: 15.h, right: 10.h);
  int _currentIndex = 1;

  Widget customButton(
      BuildContext context,
      Color color,
      String text,
      Widget destination,
      ) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destination),
        );
      },
      child: Container(
        width: 160.0.w,
        height: 90.0.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: Colors.black,
            width: 1.0,
          ),
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      color.withOpacity(0.4),
                      color.withOpacity(0.8),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp,
                  ),
                ),
              ),
            ),
            Center(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
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
                  SizedBox(height: 10.h),
                  Text(
                    'Nome Cognome',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    'Studente',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: _rowPadding,
              child: Row(
                children: [
                  CustomButton(context, azzurrino, 'Assenze', Assenze()),
                  SizedBox(width: 10.w),
                  CustomButton(context,azzurrino, 'Annotazioni', Annotazioni()),
                ],
              ),
            ),
            Padding(
              padding: _rowPadding,
              child: Row(
                children: [
                  CustomButton(context, azzurrino, 'Argomenti', Argomenti()),
                  SizedBox(width: 10.w),
                  CustomButton(context, azzurrino, 'Voti', Voti()),
                ],

              ),
            ),
            Padding(
              padding: _rowPadding,
              child: Row(
                children: [
                  CustomButton(context,azzurrino, 'Note disciplinari', PaginaLogin()),
                  SizedBox(width: 10.w),
                 CustomButton(context, azzurrino, 'Pagelle', Pagelle()),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          items: [
            It("Calendario", Icons.calendar_month),
            It("Menù", Icons.menu),
            It("Home", Icons.home),
            It("PCTO", Icons.engineering),
            It("Profilo", Icons.person),
          ],
          onTap: (currentIndex) {
            setState(() {
              _currentIndex = currentIndex;
            });
            switch(currentIndex){
              case 0:
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Calendario(),
                  ),
                );
                break;


              case 2:
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
                break;
              case 3:
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PCTO(),
                  ),
                );
                break;
              case 4:
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => profilo(),
                  ),
                );
                break;
            }
          },
        selectedItemColor: blu1,
          unselectedItemColor: Colors.grey,
      ),
    );
  }
}
