import 'dart:async';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin{
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
                        return Container(
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
          ],
        ),
      ),
    );
  }
}