import 'package:flutter/material.dart';
import 'package:practoapp/cardview.dart';

class AboutDoctor extends StatelessWidget {
  final doctorItem item;

  AboutDoctor({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            ListTile(
              title: Text(
                item.title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Divider(
              height: 1,
            ),
            SizedBox(height: 5),
            ListTile(
              leading: Icon(
                Icons.circle,
                color: Colors.black,
                size: 15,
              ),
              title: Text(item.text1),
            ),
            ListTile(
              leading: Icon(
                Icons.circle,
                color: Colors.black,
                size: 15,
              ),
              title: Text(item.text2),
            ),
          ],
        ),
      ),
    );
  }
}
