import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:get/get.dart';

import 'common_widget.dart';

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
              Bounceable(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      builder: (context) {
                        return BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                          child: const FractionallySizedBox(
                            heightFactor: 0.9,
                            child: BottomSheetUI(
                              img: 'images/fab7.jpg',
                            ),
                          ),
                        );
                      });
                },
                child: Container(
                  padding: const EdgeInsets.all(16),
                  width: Get.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: LinearGradient(
                      colors: [
                        Colors.blue.withOpacity(0.9),
                        Colors.blue.withOpacity(0.6),
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 2, horizontal: 4),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Text("2 min"),
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.wind_power,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Motivator",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        subtitle: Text(
                          "Expanded widget to force the children of the RenderFlex to fit ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.white,
                          size: 20,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Today",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Bounceable(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      builder: (context) {
                        return BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                          child: const FractionallySizedBox(
                            heightFactor: 0.9,
                            child: BottomSheetUI(
                              img: 'images/fab6.jpg',
                            ),
                          ),
                        );
                      });
                },
                child: const CardWidget(
                  time: "7:00 AM",
                  img: "images/fab6.jpg",
                  title: "Early Moarning Routine",
                  color: Colors.amber,
                  icon: Icon(
                    Icons.access_alarm,
                    color: Colors.amber,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Bounceable(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      builder: (context) {
                        return BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                          child: const FractionallySizedBox(
                            heightFactor: 0.9,
                            child: BottomSheetUI(
                              img: 'images/fab1.jpg',
                            ),
                          ),
                        );
                      });
                },
                child: const CardWidget(
                  time: "9:00 AM",
                  img: "images/fab1.jpg",
                  title: "Moarning Routine",
                  color: Colors.red,
                  icon: Icon(
                    Icons.cloud_circle,
                    color: Colors.red,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Column(
                children: [
                  Bounceable(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          builder: (context) {
                            return BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                              child: const FractionallySizedBox(
                                heightFactor: 0.9,
                                child: BottomSheetUI(
                                  img: 'images/fab3.jpg',
                                ),
                              ),
                            );
                          });
                    },
                    child: const CardWidget(
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
              Bounceable(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      builder: (context) {
                        return BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                          child: const FractionallySizedBox(
                            heightFactor: 0.9,
                            child: BottomSheetUI(
                              img: 'images/fab4.jpg',
                            ),
                          ),
                        );
                      });
                },
                child: const CardWidget(
                  time: "7:00 PM",
                  img: "images/fab4.jpg",
                  title: "Evening Routine",
                  color: Colors.red,
                  icon: Icon(
                    Icons.cloud_circle,
                    color: Colors.red,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Column(
                children: [
                  Bounceable(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          builder: (context) {
                            return BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                              child: const FractionallySizedBox(
                                heightFactor: 0.9,
                                child: BottomSheetUI(
                                  img: 'images/fab5.jpg',
                                ),
                              ),
                            );
                          });
                    },
                    child: const CardWidget(
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
                            showAll2 = "Collapse";
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
