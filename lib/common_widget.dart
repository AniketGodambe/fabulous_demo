import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 50,
              top: 20,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.white,
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}

class BottomSheetUI extends StatelessWidget {
  final String img;
  const BottomSheetUI({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      height: Get.height,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: SizedBox(
              width: Get.width,
              child: Image.asset(
                img,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: Get.width / 2.3,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 3,
                        spreadRadius: 3,
                        offset: Offset.infinite,
                      ),
                    ],
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  height: 8,
                  width: 50,
                ),
                const SizedBox(height: 10),
                const Text(
                  "Motivitaor",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            child: Column(
              children: const [
                ListTile(
                  leading: Icon(
                    Icons.alarm,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Alarm",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "9:00 AM",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.alarm,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Alarm",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "1:00 PM",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
