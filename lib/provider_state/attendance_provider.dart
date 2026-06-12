import 'package:attendance_tracker/data/student.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AttendanceProvider extends ChangeNotifier {
  final List<Student> students = [
    Student(name: 'Akash', id: 1),
    Student(name: 'Rakib', id: 2),
    Student(name: 'Sumi', id: 3),
    Student(name: 'Ananna', id: 4),
    Student(name: 'Mithila', id: 5),
    Student(name: 'Jimmey', id: 6),
    Student(name: 'Soha', id: 7),
    Student(name: 'Mira', id: 8),
    Student(name: 'Fahima', id: 9),
    Student(name: 'Shanto', id: 10),
  ];

  void toggolAttendance(int index, bool value) {
    students[index].isPresent = value;
    notifyListeners();
  }

  int get presentCount => students.where((student) => student.isPresent).length;

  int get absentCount => students.where((student)=>student.isPresent).length;

  List<String> get presentStudents => students.where((student)=>student.isPresent).map((e)=>e.name).toList();

  List<String> get absentStudents =>students.where((student)=>!student.isPresent).map((s)=>s.name).toList();

}
