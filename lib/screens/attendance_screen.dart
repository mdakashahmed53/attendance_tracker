import 'package:attendance_tracker/provider_state/attendance_provider.dart';
import 'package:attendance_tracker/screens/summery_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class AttendanceScreen extends StatefulWidget {
  const AttendanceScreen({super.key});

  @override
  State<AttendanceScreen> createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  late String dateMonth;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _updateMothDay();
  }

  _updateMothDay() {
    DateTime dateTime = DateTime.now();
    setState(() {
      dateMonth = DateFormat('MMMM d').format(dateTime);
    });
  }


  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AttendanceProvider>(context);

    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Daily Attendance - $dateMonth',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                ),
              ),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ListView.builder(
                      itemCount: provider.students.length,
                      itemBuilder: (context, index) {

                        final student = provider.students[index];
                        return CheckboxListTile(
                          side: BorderSide(width: 1.5),
                          title: Text(
                            '${student.name} ${index +1}',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          value: student.isPresent,
                          onChanged: (value) {
                            provider.toggolAttendance(index, value ?? false);
                          },
                        );
                      },
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10),

              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>SummeryScreen()));
                  },
                  child: Text(
                    'Submit',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
