import 'dart:developer';
import 'dart:ui';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'common_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  String showAll1 = "Show All";
  String showAll2 = "Show All";

  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      animationBehavior: AnimationBehavior.preserve,
      lowerBound: 0.8,
      vsync: this,
      duration: const Duration(seconds: 3),
    )
      ..forward()
      ..repeat(reverse: true);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

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
              InkWell(
                onTap: () {
                  log(animationController.value.toString());
                },
                child: BounceInRight(
                  child: AnimatedBuilder(
                      animation: animationController,
                      builder: (context, child) {
                        return Container(
                          height: 55 * animationController.value,
                          padding: const EdgeInsets.all(12.0),
                          width: Get.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromARGB(255, 80, 4, 4),
                                Color.fromARGB(255, 234, 32, 14),
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Continue",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22 * animationController.value,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        );
                      }),
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
              GestureDetector(
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
                child: BounceInLeft(
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
              ),
              const SizedBox(height: 20),
              GestureDetector(
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
                child: BounceInRight(
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
              ),
              const SizedBox(height: 30),
              Column(
                children: [
                  GestureDetector(
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
                    child: BounceInLeft(
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
                            showAll1 = "Collapse";
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
              GestureDetector(
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
                  GestureDetector(
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
