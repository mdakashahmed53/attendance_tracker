import 'package:flutter/material.dart';

class CustomCircularProgress extends StatelessWidget{

  final double percentage;
  final String label ;
  final String subLabel ;
  final Color activeColor;

  const CustomCircularProgress({super.key, required this.percentage, required this.label, required this.subLabel, required this.activeColor});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          // progress bar background
          SizedBox(
            height: 140,
            width: 140,
            child: CircularProgressIndicator(
              value: 1,
              strokeWidth: 15,
              valueColor: AlwaysStoppedAnimation<Color>(activeColor.withOpacity(0.2)),
            ),



          ),

          // progress bar foreground
          SizedBox(
            height: 140,
            width: 140,
            child: CircularProgressIndicator(
              value: percentage,
              strokeWidth: 15,
              strokeCap: StrokeCap.round,
              valueColor: AlwaysStoppedAnimation<Color>(activeColor),
            ),
          ),

          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(label, style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),),

              SizedBox(height: 4,),
              Text('($subLabel%)', style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Colors.grey.shade600
              ),),
            ],
          )
        ],
      ),
    );
  }

}