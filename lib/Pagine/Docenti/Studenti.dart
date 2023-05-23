import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:registro/Pagine/Docenti/HomePageDocenti.dart';
import 'package:registro/metodi/Metodi.dart';
class Studenti extends StatefulWidget {
  const Studenti({Key? key}) : super(key: key);

  @override
  State<Studenti> createState() => _StudentiState();
}

class _StudentiState extends State<Studenti> {
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
          It("Aggiungi", Icons.add_circle),

        ],
        onTap: (currentIndex) {
          switch(currentIndex) {
            case 0:
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Studenti(),
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
                  builder: (context) => HomePageDocenti(),
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
