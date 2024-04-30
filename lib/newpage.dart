import 'package:flutter/material.dart';
import 'package:practoapp/customalertbox.dart';
import 'package:practoapp/custombutton.dart';

class NewPage extends StatefulWidget {
  final String title;
  final String subtitle;

  const NewPage({required this.title, required this.subtitle});

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Book Appointment'),
        ),
        body: Container(
          margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
          child: Column(
            children: [
              Text(
                widget.title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                widget.subtitle,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                child: Divider(
                  thickness: 1,
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Afternoon 7 Slot',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomTimeButton(
                              text: '01:00 AM',
                              onPressed: () {
                                // Add your onPressed logic here
                              },
                            ),
                            CustomTimeButton(
                              text: '01:30 AM',
                              onPressed: () {
                                // Add your onPressed logic here
                              },
                            ),
                            CustomTimeButton(
                              text: '02:00 AM',
                              onPressed: () {
                                // Add your onPressed logic here
                              },
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomTimeButton(
                              text: '02:30 AM',
                              onPressed: () {
                                // Add your onPressed logic here
                              },
                            ),
                            CustomTimeButton(
                              text: '03:00 AM',
                              onPressed: () {
                                // Add your onPressed logic here
                              },
                            ),
                            CustomTimeButton(
                              text: '03:30 AM',
                              onPressed: () {
                                // Add your onPressed logic here
                              },
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        CustomTimeButton(
                          text: '04:00 AM',
                          onPressed: () {
                            // Add your onPressed logic here
                          },
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Evening 7 Slot',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomTimeButton(
                              text: '05:00 AM',
                              onPressed: () {
                                // Add your onPressed logic here
                              },
                            ),
                            CustomTimeButton(
                              text: '05:30 AM',
                              onPressed: () {
                                // Add your onPressed logic here
                              },
                            ),
                            CustomTimeButton(
                              text: '06:00 AM',
                              onPressed: () {
                                // Add your onPressed logic here
                              },
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomTimeButton(
                              text: '06:30 AM',
                              onPressed: () {
                                // Add your onPressed logic here
                              },
                            ),
                            CustomTimeButton(
                              text: '07:00 AM',
                              onPressed: () {
                                // Add your onPressed logic here
                              },
                            ),
                            CustomTimeButton(
                              text: '07:30 AM',
                              onPressed: () {
                                // Add your onPressed logic here
                              },
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        CustomTimeButton(
                          text: '08:00 AM',
                          onPressed: () {
                            // Add your onPressed logic here
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 170,
                    ),
                    SizedBox(
                      height: 45,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => CustomAlertDialog(
                              onPress: () {
                                Navigator.pop(context);
                              },
                            ),
                          );
                        },
                        child: Text('Submit',
                            style: TextStyle(color: Colors.white)),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
