import 'package:exh_project/widgets/common/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TimeViewScreen extends StatefulWidget {
  const TimeViewScreen({super.key});

  @override
  State<TimeViewScreen> createState() => _TimeViewScreenState();
}

class _TimeViewScreenState extends State<TimeViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: CustomText(
            text: "Pre-500 AD",
            size: 28,
          )),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TimeViewScreen()),
                        );
                      },
                      child: Container(
                        height: 400,
                        decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          children: [
                            Container(
                              height: 300,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(30)),
                              child: Image.asset(
                                'assets/people01.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Gap(10),
                            CustomText(
                              text: 'Al-Khwarizmi',
                              size: 20,
                            ),
                            CustomText(
                              text: 'Father of Algebra',
                              size: 16,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TimeViewScreen()),
                        );
                      },
                      child: Container(
                        height: 400,
                        decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          children: [
                            Container(
                              height: 300,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(30)),
                              child: Image.asset(
                                'assets/people01.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Gap(10),
                            CustomText(
                              text: 'Pre-500 AD',
                              size: 20,
                            ),
                            CustomText(
                              text: 'Ancient Mathematics',
                              size: 16,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TimeViewScreen()),
                        );
                      },
                      child: Container(
                        height: 400,
                        decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          children: [
                            Container(
                              height: 300,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(30)),
                              child: Image.asset(
                                'assets/people01.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Gap(10),
                            CustomText(
                              text: 'Al-Khwarizmi',
                              size: 20,
                            ),
                            CustomText(
                              text: 'Father of Algebra',
                              size: 16,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
