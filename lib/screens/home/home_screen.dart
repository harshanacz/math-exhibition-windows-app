import 'package:exh_project/screens/time%20view/time_view_screen.dart';
import 'package:exh_project/widgets/common/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> periods = [
    'Pre-500 AD',
    '500–1400 AD',
    '1400–1600 AD',
    '1600–1800 AD',
    '1800–Present'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: CustomText(
              text: "Epochs of Mathematics",
              size: 28,
            )),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10)),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Search',
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.search)),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(Icons.filter_list),
                    )
                  ],
                ),
                Gap(20),
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
                          height: 300,
                          decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(30)),
                          child: Column(
                            children: [
                              Container(
                                height: 200,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.circular(30)),
                                child: Image.asset(
                                  'assets/bg1.png',
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
                      child: Container(
                        height: 300,
                        decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          children: [
                            Container(
                              height: 200,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(30)),
                              child: Image.asset(
                                'assets/bg1.png',
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
                  ],
                ),
                Gap(20),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 300,
                        decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          children: [
                            Container(
                              height: 200,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(30)),
                              child: Image.asset(
                                'assets/bg1.png',
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
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        height: 300,
                        decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          children: [
                            Container(
                              height: 200,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(30)),
                              child: Image.asset(
                                'assets/bg1.png',
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
                  ],
                ),
              ],
            ),
          ),
        )));
  }
}
