import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:registro/Pagine/Docenti/HomePageDocenti.dart';
import 'package:registro/Pagine/Docenti/Classi.dart';
import 'package:registro/metodi/Metodi.dart';

class OrarioDocenti extends StatefulWidget {
  const OrarioDocenti({Key? key}) : super(key: key);

  @override
  State<OrarioDocenti> createState() => _OrarioDocentiState();
}

class _OrarioDocentiState extends State<OrarioDocenti> {
  int _selectedIndex = 2;
  int _currentDayIndex = 0;
  List<String> _days = [
    'Lun',
    'Mar',
    'Mer',
    'Gio',
    'Ven',
    'Sab',
  ];
  List<String> _hours = [
    '8:00',
    '9:00',
    '10:00',
    '11:00',
    '12:00',
    '13:00',
    '14:00',
    '15:00',
    '16:00',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_days[_currentDayIndex] + ' - Orario Docenti'),
      ),
      body: Column(
        children: [
          _buildTimeRow(),
          Expanded(
            child: ListView.builder(
              itemCount: _hours.length,
              itemBuilder: (context, index) {
                return _buildTableRow(_hours[index]);
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

  Widget _buildTimeRow() {
    return Container(
      height: 40,
      color: Colors.grey,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _days.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                _currentDayIndex = index;
              });
            },
            child: Container(
              width: 80,
              color: index == _currentDayIndex ? Colors.blue : Colors.transparent,
              child: Center(
                child: Text(
                  _days[index],
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: index == _currentDayIndex ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildTableRow(String time) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Text(
              time,
              style: TextStyle(fontSize: 16.sp, color: Colors.black),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              height: 40,
              color: Colors.grey,
              //Aggiungo contenuto cella


            ),
          ),
        ],
      ),
    );
  }
}

