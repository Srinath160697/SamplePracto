import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:practoapp/Aboutdoctor.dart';
import 'package:practoapp/newpage.dart';
import 'package:readmore/readmore.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class carditem {
  final String title;
  final String subtitle;
  const carditem({
    required this.title,
    required this.subtitle,
  });
}

class doctorItem {
  final String title;

  final String text1;
  final String text2;

  doctorItem({
    required this.title,
    required this.text1,
    required this.text2,
  });
}

class MyCardview extends StatefulWidget {
  const MyCardview({super.key});

  @override
  State<MyCardview> createState() => _MyCardviewState();
}

class _MyCardviewState extends State<MyCardview> {
  String content =
      'The primary advantage of using SingleChildScrollView is to provide a seamless user experience. It allows users to access all the content without the need for excessive scrolling or resizing, ensuring that no information is hidden. Additionally, it simplifies the design process by providing a straightforward way to handle scrollable content.';

  List<doctorItem> datas = [
    doctorItem(
      title: 'Specializations',
      text1: 'General Physician',
      text2: 'General Practitioner',
    ),
    doctorItem(
      title: 'Education',
      text1: 'MBBS - Kilpak medical college, Chennai - 1986',
      text2: 'Text 2 for Tuesday',
    ),
    doctorItem(
      title: 'Exprience',
      text1: '1965 - 2022 Doctor at Nannalam',
      text2: 'Text 2 for Wednesday',
    ),
    doctorItem(
      title: 'Memberships',
      text1: 'Indian Medical Association(IMA)',
      text2: 'Text 2 for Thursday',
    ),
    doctorItem(
      title: 'Registration',
      text1: '42036 Tamil Nadu Medical Council, 1986',
      text2: 'Text 2 for Friday',
    ),
  ];

  List<carditem> items = [
    carditem(
      title: 'Monday',
      subtitle: '14 Slot Avaliable',
    ),
    carditem(
      title: 'Tuesday',
      subtitle: '14 Slot Avaliable',
    ),
    carditem(
      title: 'Wednesday',
      subtitle: '14 Slot Avaliable',
    ),
    carditem(
      title: 'Thursday',
      subtitle: '14 Slot Avaliable',
    ),
    carditem(
      title: 'Friday',
      subtitle: '14 Slot Avaliable',
    ),
    carditem(
      title: 'Saturday',
      subtitle: '14 Slot Avaliable',
    ),
    carditem(
      title: 'Sunday',
      subtitle: '14 Slot Avaliable',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 50.0, // Adjust radius as needed
                    backgroundImage: NetworkImage(
                      'https://media.istockphoto.com/id/1469535204/photo/young-businessman-muslim-praying.jpg?s=1024x1024&w=is&k=20&c=SnwGxBcaOpdKxRcnwWG5Nn_8pzFpvw3ILOz1HL5z80I=',
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dr.Manikandan\nVeluswami",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("General Physician"),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          Text(
                            '23 years exprience overall',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            height:
                                2, // Adjust the height to increase the underline width
                            color: Colors
                                .black, // Adjust the color of the underline as needed
                            width:
                                170, // Adjust the width of the underline as needed
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                CupertinoIcons.hand_thumbsup_fill,
                                size: 18,
                                color: Colors.green,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                '97%',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.comment,
                                size: 18,
                                color: Colors.green,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  Text(
                                    '58 Paitent Storie',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Container(
                                    height:
                                        2, // Adjust the height to increase the underline width
                                    color: Colors
                                        .black, // Adjust the color of the underline as needed
                                    width:
                                        110, // Adjust the width of the underline as needed
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                child: Divider(
                  thickness: 1,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'Clinic Visit Slot',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: 50,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  separatorBuilder: (context, index) => SizedBox(
                    width: 10,
                  ),
                  itemBuilder: (context, index) =>
                      buildcard(item: items[index]),
                ),
              ),
              SizedBox(height: 15),
              Divider(height: 1),
              SizedBox(height: 10),
              Text(
                'More about Dr.Veterinarian',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Divider(height: 1),
              SizedBox(height: 10),
              Container(
                child: ReadMoreText(
                  content,
                  trimLines: 2,
                  textAlign: TextAlign.justify,
                  trimCollapsedText: 'Read more',
                  trimExpandedText: 'Read less',
                  lessStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                  moreStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                  style: TextStyle(
                    fontSize: 16,
                    height: 2,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Divider(
                height: 1,
              ),
              Container(
                height: 300,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: datas.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          ListTile(
                            title: Text(datas[index].title),
                            trailing: Icon(Icons.arrow_right_outlined),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          AboutDoctor(item: datas[index])));
                            },
                          ),
                          Divider(
                            height: 1,
                          ),
                        ],
                      );
                    }),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 350,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5)),
                child: GoogleMap(
                    initialCameraPosition:
                        CameraPosition(target: LatLng(0, 0), zoom: 14)),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: null,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 50,
              width: 170,
              child: FloatingActionButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                backgroundColor: Colors.green,
                elevation: 8,
                child: const Text(
                  'Book clinic Visit',
                  style: TextStyle(color: Colors.white),
                ),
                heroTag:
                    'book_clinic_visit', // Unique hero tag for the first FloatingActionButton
              ),
            ),
            SizedBox(
              height: 50,
              width: 170,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green),
                ),
                child: FloatingActionButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  backgroundColor: Colors.white,
                  elevation: 8,
                  child: const Text('Call clinic'),
                  heroTag:
                      'call_clinic', // Unique hero tag for the second FloatingActionButton
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildcard({
    required carditem item,
  }) =>
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  NewPage(title: item.title, subtitle: item.subtitle),
            ),
          );
        },
        child: Container(
          height: 50,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.green,
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                children: [
                  Text(
                    item.title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    item.subtitle,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
