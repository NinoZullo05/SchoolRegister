import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:registro/Pagine/Docenti/HomePageDocenti.dart';
import 'package:registro/Pagine/Docenti/OrarioDocenti.dart';
import 'package:registro/metodi/Metodi.dart';
class Classi extends StatefulWidget {
  const Classi({Key? key}) : super(key: key);

  @override
  State<Classi> createState() => _ClassiState();
}

class _ClassiState extends State<Classi> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Classi", style: GoogleFonts.roboto(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 20.sp,
        )),
      ),


      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        items: [
          It("Classi", Icons.people_alt_rounded),
          It("Home", Icons.home),
          It("Orari", Icons.lock_clock),

        ],
        onTap: (currentIndex) {
          switch(currentIndex) {
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
          };
        },
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
