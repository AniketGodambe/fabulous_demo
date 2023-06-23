import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget kheight1 = const SizedBox(height: 10);
Widget kheight2 = const SizedBox(height: 20);

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
              right: 20,
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
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 5),
            height: 200,
            width: Get.width,
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                image: DecorationImage(
                  image: AssetImage(img),
                  fit: BoxFit.cover,
                )),
            // height: Get.height,
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
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  height: 5,
                  width: 50,
                ),
                const Spacer(),
                const ListTile(
                  contentPadding: EdgeInsets.only(left: 10),
                  leading: Icon(
                    Icons.alarm,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Alarm",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  subtitle: Text(
                    "9:00 AM",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          kheight2,
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: InkWell(
              onTap: () {},
              child: BounceInRight(
                child: Container(
                  height: 50,
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
                  child: const Center(
                    child: Text(
                      "Continue",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
          ),
          kheight2,
        ],
      ),
    );
  }
}
