import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sliderview_demo/Model/slideModel.dart';
import 'package:sliderview_demo/activity/slideDots.dart';
import 'package:sliderview_demo/screens/slideitems.dart';

class SlideShowActivity extends StatefulWidget {
  SlideShowActivity({super.key});

  @override
  State<SlideShowActivity> createState() => _SlideShowActivityState();
}

class _SlideShowActivityState extends State<SlideShowActivity> {
  int currentpage = 0;

  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 5), (timer) {
      if (currentpage < 2) {
        currentpage++;
      } else {
        currentpage = 0;
      }
      _pageController.animateToPage(currentpage,
          duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
    });

    super.initState();
  }

  onpageCHanged(int index) {
    setState(() {
      currentpage = index;
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  PageController _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              PageView.builder(
                onPageChanged: (value) => onpageCHanged(value),
                scrollDirection: Axis.horizontal,
                controller: _pageController,
                itemCount: slideList.length,
                itemBuilder: (context, index) => slideitems(index),
              ),
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  Container(
                    color: Colors.black,
                    margin: const EdgeInsets.only(bottom: 35),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (int i = 0; i < slideList.length; i++)
                          if (i == currentpage)
                            SlideDots(true)
                          else
                            SlideDots(false)
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              color: Colors.blue,
              child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Getting Started",
                      style: TextStyle(color: Colors.white))),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Have an account?"),
                ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Login",
                      style: TextStyle(color: Colors.blue),
                    ),
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        shadowColor: Colors.white,
                        backgroundColor: Colors.white)),
              ],
            )
          ],
        )
      ],
    );
  }
}
