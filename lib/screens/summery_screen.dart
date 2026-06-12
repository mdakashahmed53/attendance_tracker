import 'package:attendance_tracker/provider_state/attendance_provider.dart';
import 'package:attendance_tracker/screens/widgets/custom_circular_progress.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SummeryScreen extends StatefulWidget {
  const SummeryScreen({super.key});

  @override
  State<SummeryScreen> createState() => _SummeryScreenState();
}

class _SummeryScreenState extends State<SummeryScreen> {
  @override
  Widget build(BuildContext context) {

    final provider = Provider.of<AttendanceProvider>(context);

    final int totalStudent = provider.students.length;

    final double presentPercent = provider.presentCount / totalStudent;

    final double absentPercent = provider.absentCount / totalStudent ;


    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.center,
              child: Text('Attendance Summery', style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700
                    ),),
            ),

            SizedBox(height: 50,),
            // absent & present progress bar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                // present circular progress
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Present', style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                    ),),
                    SizedBox(height: 20,),
                    CustomCircularProgress(percentage: presentPercent, label: '${provider.presentCount}/10', subLabel: '${presentPercent*100}', activeColor: Colors.green)
                  ],
                ),

                // absent circular progress
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Absent', style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                    ),),
                    SizedBox(height: 20,),
                    CustomCircularProgress(percentage: absentPercent, label: '${provider.absentCount}/10', subLabel: '${presentPercent*100}', activeColor: Colors.grey)
                  ],
                ),
              ],
            ),

            SizedBox(
              height: 80,
            ),

            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Present Students : ', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),),
                    
                    Text('( ${provider.presentStudents} )', style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                    ),),
                    
                    SizedBox(height: 20,),
                    Text('Absents Students :', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),),



                    Text('(${provider.absentStudents})', style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                    ),),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
