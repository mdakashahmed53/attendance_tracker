import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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

   _updateMothDay(){
     DateTime dateTime = DateTime.now();
     setState(() {
       dateMonth = DateFormat('MMMM d').format(dateTime);

     });
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [

              Align(
                alignment: Alignment.center,
                child: Text('Daily Attendance - $dateMonth', style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700
                ),),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CheckboxListTile(

                            title: Text('Student 1', style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w700
                            ),
                            ),
                            value: true, onChanged: (value){

                        }),
                        CheckboxListTile(
                            title: Text('Student 2' , style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w700
                            )),
                            value: true, onChanged: (value){

                        }),
                        CheckboxListTile(
                            title: Text('Student 3', style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w700
                            )),
                            value: true, onChanged: (value){

                        }),
                        CheckboxListTile(
                            title: Text('Student 4', style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w700
                            )),
                            value: true, onChanged: (value){

                        }),
                        CheckboxListTile(
                            title: Text('Student 5', style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w700
                            )),
                            value: true, onChanged: (value){

                        }),
                        CheckboxListTile(
                            title: Text('Student 6', style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w700
                            )),
                            value: true, onChanged: (value){

                        }),
                        CheckboxListTile(
                            title: Text('Student 7', style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w700
                            )),
                            value: true, onChanged: (value){

                        }),
                        CheckboxListTile(
                            title: Text('Student 8', style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w700
                            )),
                            value: true, onChanged: (value){

                        }),
                        CheckboxListTile(
                            title: Text('Student 9', style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w700
                            )),
                            value: true, onChanged: (value){

                        }),
                        CheckboxListTile(
                            title: Text('Student 10', style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w700
                            )),
                            value: true, onChanged: (value){

                        }),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),

              SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){}, child: Text('Submit')))

            ],
          ),
        ),
      ),
    );
  }
}
