import 'package:attendance_tracker/screens/widgets/custom_circular_progress.dart';
import 'package:flutter/material.dart';

class SummeryScreen extends StatefulWidget {
  const SummeryScreen({super.key});

  @override
  State<SummeryScreen> createState() => _SummeryScreenState();
}

class _SummeryScreenState extends State<SummeryScreen> {
  @override
  Widget build(BuildContext context) {
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
                    CustomCircularProgress(percentage: 0.50, label: '5/10', subLabel: '50', activeColor: Colors.green)
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
                    CustomCircularProgress(percentage: 0.50, label: '5/10', subLabel: '50', activeColor: Colors.grey)
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
                    Text('Present Students :', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),),
                    SizedBox(height: 30,),
                    Text('Present Students :', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),)
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
