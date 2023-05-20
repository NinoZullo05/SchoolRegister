import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Registrati extends StatefulWidget {
  const Registrati({Key? key}) : super(key: key);

  @override
  _Registrati createState() => _Registrati();
}

class _Registrati extends State<Registrati> {
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text('Sing up'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _BoxRegistrazione("Nome"),
              SizedBox(height: 16.0.h),
              _BoxRegistrazione("Cognome"),
              SizedBox(height: 16.0.h),
              _BoxRegistrazione("Data di Nascita"),
              SizedBox(height: 16.0.h),
              _BoxRegistrazione("Email"),
              SizedBox(height: 16.0.h),
              _BoxRegistrazione("Password"),
              SizedBox(height: 16.0.h),
              _BoxRegistrazione("Conferma Password"),
              ElevatedButton(
                onPressed: () {
                  // TODO: Implement sign up logic
                },
                child: Text('Registrati'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _BoxRegistrazione(String placeholder) {
  return SizedBox(
    height: 40.0.h,
    child: TextField(
      decoration: InputDecoration(
        labelText: placeholder,
        border: OutlineInputBorder(),
      ),
    ),
  );
}
