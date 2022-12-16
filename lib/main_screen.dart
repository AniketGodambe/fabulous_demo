import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String showAll1 = "Show All";
  String showAll2 = "Show All";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 45),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Your Routines",
                    style: TextStyle(color: Colors.black, fontSize: 17),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                        top: 2, bottom: 2, left: 6, right: 6),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.add,
                          color: Colors.black,
                        ),
                        Text(
                          "Create",
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                "Today",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              const CardWidget(
                time: "7:00 AM",
                img: "images/fab6.jpg",
                title: "Early Moarning Routine",
                color: Colors.amber,
                icon: Icon(
                  Icons.access_alarm,
                  color: Colors.amber,
                ),
              ),
              const SizedBox(height: 20),
              const CardWidget(
                time: "9:00 AM",
                img: "images/fab1.jpg",
                title: "Moarning Routine",
                color: Colors.red,
                icon: Icon(
                  Icons.cloud_circle,
                  color: Colors.red,
                ),
              ),
              const SizedBox(height: 30),
              Column(
                children: [
                  const CardWidget(
                    isExpanded: true,
                    time: "1:00 AM",
                    img: "images/fab3.jpg",
                    title: "Afternoon Routine",
                    color: Colors.blue,
                    icon: Icon(
                      Icons.cloud_circle,
                      color: Colors.blue,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 40, right: 0),
                    padding: EdgeInsets.zero,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        )),
                    child: ExpansionTile(
                      tilePadding: const EdgeInsets.only(left: 20),
                      childrenPadding: const EdgeInsets.only(left: 40),
                      onExpansionChanged: (value) {
                        log(value.toString());
                        if (value == true) {
                          setState(() {
                            showAll1 = "Colapse";
                          });
                        } else {
                          setState(() {
                            showAll1 = "Show All";
                          });
                        }
                      },
                      title: const Text(
                        "3 habits",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                        ),
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text(
                          showAll1,
                          style: const TextStyle(
                            color: Colors.blue,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      expandedAlignment: Alignment.centerLeft,
                      children: const [
                        ListTile(
                          leading: Icon(Icons.add_a_photo),
                          title: Text("Disconnect and unplug"),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.ac_unit_rounded,
                            color: Colors.blueAccent,
                          ),
                          title: Text("Do you Guided Activity Service"),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.add_a_photo,
                            color: Colors.red,
                          ),
                          title: Text("Disconnect and unplug"),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              const CardWidget(
                time: "7:00 PM",
                img: "images/fab4.jpg",
                title: "Evening Routine",
                color: Colors.red,
                icon: Icon(
                  Icons.cloud_circle,
                  color: Colors.red,
                ),
              ),
              const SizedBox(height: 30),
              Column(
                children: [
                  const CardWidget(
                    isExpanded: true,
                    time: "9:00 PM",
                    img: "images/fab5.jpg",
                    title: "Night Routine",
                    color: Colors.blue,
                    icon: Icon(
                      Icons.cloud_circle,
                      color: Colors.blue,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 40, right: 0),
                    padding: EdgeInsets.zero,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        )),
                    child: ExpansionTile(
                      tilePadding: const EdgeInsets.only(left: 20),
                      childrenPadding: const EdgeInsets.only(left: 40),
                      onExpansionChanged: (value) {
                        log(value.toString());
                        if (value == true) {
                          setState(() {
                            showAll2 = "Colapse";
                          });
                        } else {
                          setState(() {
                            showAll2 = "Show All";
                          });
                        }
                      },
                      title: const Text(
                        "3 habits",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                        ),
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text(
                          showAll2,
                          style: const TextStyle(
                            color: Colors.blue,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      expandedAlignment: Alignment.centerLeft,
                      children: const [
                        ListTile(
                          leading: Icon(Icons.add_a_photo),
                          title: Text("Disconnect and unplug"),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.ac_unit_rounded,
                            color: Colors.blueAccent,
                          ),
                          title: Text("Do you Guided Activity Service"),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.add_a_photo,
                            color: Colors.red,
                          ),
                          title: Text("Disconnect and unplug"),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final String time, img, title;
  final Color color;
  final Icon icon;
  final bool isExpanded;
  const CardWidget(
      {super.key,
      required this.time,
      required this.img,
      required this.title,
      required this.color,
      required this.icon,
      this.isExpanded = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            icon,
            const SizedBox(width: 20),
            Text(
              time,
              style: TextStyle(
                color: color,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 40),
              decoration: BoxDecoration(
                borderRadius: isExpanded == true
                    ? BorderRadius.circular(0)
                    : BorderRadius.circular(12),
              ),
              height: 70,
              width: Get.width,
              child: ClipRRect(
                borderRadius: isExpanded == true
                    ? const BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      )
                    : BorderRadius.circular(12),
                child: Image.asset(
                  img,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              left: 60,
              top: 20,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 110),
                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
