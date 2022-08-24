import 'package:flutter/material.dart';
import 'package:sliderview_demo/Model/slideModel.dart';

class slideitems extends StatelessWidget {
  final int index;
  slideitems(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(
                  image: AssetImage(slideList[index].url), fit: BoxFit.cover)),
        ),
        Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            child: Center(child: Text(slideList[index].title))),
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          child: Center(
            child: Text(slideList[index].description),
          ),
        ),
      ],
    );
  }
}
