import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {
  final VoidCallback? onPress;

  const CustomAlertDialog({Key? key, this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      contentPadding: EdgeInsets.all(20),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            backgroundColor: Color(0xFFE5E5E5),
            radius: 60,
            child: Icon(
              Icons.thumb_up,
              color: Colors.green,
              size: 50,
            ),
          ),
          SizedBox(height: 15),
          Text(
            'Thank You  !',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Your Appointment Successful',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 30),
          Text(
            'You booked an appointment with Dr.pediatrian purpieson on feburary at 02:00 PM',
            style: TextStyle(fontSize: 12),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: onPress ?? () {},
            child: Text(
              'Submit',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              minimumSize: Size(double.infinity, 45),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(
            'Edit your Appointment',
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
