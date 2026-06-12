import 'package:attendance_tracker/provider_state/attendance_provider.dart';
import 'package:attendance_tracker/screens/attendance_screen.dart';
import 'package:attendance_tracker/screens/summery_screen.dart';
import 'package:attendance_tracker/screens/test.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){

  runApp(
      ChangeNotifierProvider(

      create: (_) => AttendanceProvider(),
      child: const MyApp()

  )
  );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AttendanceScreen(),
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
