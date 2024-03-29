import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hospital/exports.dart';
import 'package:hospital/general/widgets/apptext.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late PageController _pageController;
  late Timer _timer;
  int currentindex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0, viewportFraction: 1);

    // Start the auto-scroll timer
    _startAutoScroll();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (currentindex < 2) {
        currentindex++;
      } else {
        currentindex = 0;
      }

      if (_pageController.hasClients) {
        _pageController.animateToPage(
          currentindex,
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeIn,
        );
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer when the widget is disposed
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 145,
                    width: MediaQuery.of(context).size.width,
                    child: PageView.builder(
                      itemCount: 3,
                      physics: const BouncingScrollPhysics(),
                      controller: _pageController,
                      onPageChanged: (value) {
                        currentindex = value;
                        setState(() {});
                      },
                      itemBuilder: (context, index) {
                        return const SizedBox(
                          height: 300,
                          child: Card(
                            color: Colors.blueGrey,
                          ),
                        );
                      },
                    ),
                  ),
                  TabPageSelector(
                    indicatorSize: 8,
                    controller: TabController(
                        length: 3, initialIndex: currentindex, vsync: this),
                    selectedColor: Colors.blue,
                    color: Colors.grey,
                    borderStyle: BorderStyle.none,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
                  width: MediaQuery.sizeOf(context).width,
                  height: 150,
                  child: const Card(
                    color: Colors.blueGrey,
                  ),
                ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText.text('Health Category'),
                      Row(
                        children: [
                          AppText.text('View all', color: Colors.blue,),
                          const Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                            color: Colors.blue,
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 10,),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 1.0,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        mainAxisExtent: 120.0),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () => Navigator.pushNamed(context, Routes.singlePrescription),
                        child: Card(
                          color: Colors.blueGrey,
                        ),
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
