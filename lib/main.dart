import 'package:attendance_tracker/screens/attendance_screen.dart';
import 'package:attendance_tracker/screens/summery_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SummeryScreen(),
      title: 'Attendance App',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        checkboxTheme: CheckboxThemeData(

          shape: OvalBorder(
          )
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white
          )
        )

      ),

    );
  }
}
