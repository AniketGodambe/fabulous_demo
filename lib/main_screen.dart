import 'dart:developer';
import 'dart:ui';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
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
  bool isHide1 = false;
  bool isHide2 = false;

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
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   leading: const Padding(
      //     padding: EdgeInsets.all(6.0),
      //     child: ClipRRect(
      //       child: CircleAvatar(
      //         backgroundColor: Colors.grey,
      //       ),
      //     ),
      //   ),
      //   actions: [
      //     Row(
      //       children: [
      //         Container(
      //           height: 28,
      //           padding: const EdgeInsets.only(
      //               left: 10, right: 10, top: 4, bottom: 4),
      //           decoration: BoxDecoration(
      //             color: Colors.red,
      //             borderRadius: BorderRadius.circular(15),
      //           ),
      //           child: Text(
      //             "Upgrade".toUpperCase(),
      //             style: const TextStyle(
      //               color: Colors.white,
      //               fontSize: 17,
      //               fontWeight: FontWeight.bold,
      //             ),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ],
      // ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              kheight2,
              kheight2,
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
                        setState(() {
                          isHide1 = value;
                        });
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
                      title: isHide1 == true
                          ? const SizedBox()
                          : const Text(
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
                        setState(() {
                          isHide2 = value;
                        });
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
                      title: isHide2 == true
                          ? const SizedBox()
                          : const Text(
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
