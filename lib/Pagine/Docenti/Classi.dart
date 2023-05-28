import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:registro/Pagine/Docenti/HomePageDocenti.dart';
import 'package:registro/Pagine/Docenti/OrarioDocenti.dart';
import 'package:registro/Pagine/Docenti/SelectedClass.dart';
import 'package:registro/Pagine/Widget/HeaderHeight.dart';
import 'package:registro/metodi/Metodi.dart';
import 'package:registro/mysql/utente.dart';

class Classi extends StatefulWidget {
  const Classi({Key? key}) : super(key: key);

  @override
  State<Classi> createState() => _ClassiState();
}

class _ClassiState extends State<Classi> {
  int _selectedIndex = 0;
  final double _headerHeight = 100.h;
  final EdgeInsetsGeometry _rowPadding =
      EdgeInsets.only(top: 30.h, left: 15.h, right: 10.h);

  List<String> classList = ['4IC', '5IC', '2LA'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Classi",
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 20.sp,
          ),
        ),
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
          SizedBox(height: 10.h),
          Text(
            "Nome Cognome",
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            'Docente',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: classList.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: _rowPadding,
                  child: Row(
                    children: [
                      ButtonSVG(
                        context,
                        Colors.white,
                        classList[index],
                        SelectedClass(),
                        'assets/icons/${classList[index]}.svg',
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        items: [
          It("Classi", Icons.people_alt_rounded),
          It("Home", Icons.home),
          It("Orari", Icons.lock_clock),
        ],
        onTap: (currentIndex) {
          switch (currentIndex) {
            case 0:
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Classi(),
                ),
              );
              break;
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePageDocenti(),
                ),
              );
              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OrarioDocenti(),
                ),
              );
              break;
          }
        },
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
