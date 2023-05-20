import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:registro/Pagine/Widget/HeaderHeight.dart';
import 'package:registro/Pagine/PaginaLogin.dart';

class PasswordDimenticata extends StatefulWidget {
  const PasswordDimenticata({Key? key}) : super(key: key);

  @override
  _PasswordDimenticataState createState() => _PasswordDimenticataState();
}

class _PasswordDimenticataState extends State<PasswordDimenticata> {
  final _emailController = TextEditingController();
  double _headerHeight = 100.h;

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: _headerHeight,
            child: HeaderWidget(_headerHeight),
          ),
          SizedBox(height: 20.h),
          Text("Password Dimenticata?",
          style: TextStyle(color: Colors.black, fontSize: 25.w),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: _emailController,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 16.0.h),
                  ElevatedButton(
                    onPressed: () {
                      // TODO: Logica di Password dimenticata
                    },
                    child: Text('Sign Up'),
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PaginaLogin(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(150.w, 30.h),
                    ),
                    child: Text(
                      'Torna al login',
                      style: TextStyle(fontSize: 15.w),
                    ),
                  ),



                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
