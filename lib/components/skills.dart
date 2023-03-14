import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:velocity_x/velocity_x.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 5.0,
      runSpacing: 5.0,
      alignment: WrapAlignment.center,
      children: [
        Divider(),
        Container(
          padding: EdgeInsets.all(20.0),
          width: context.screenWidth < 900
              ? context.screenWidth * 0.9
              : ((context.screenWidth * 0.8) / 3),
          // padding: EdgeInsets.symmetric(vertical: 15.0),
          alignment: Alignment.center,
          child: Text(
            "My Skills",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Container(
          // width: context.screenWidth < 900
          //     ? context.screenWidth * 0.9
          //     : ((context.screenWidth * 0.8) / 3),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
          child: Column(
            children: const [
              Chip(
                label: Text(
                  "Python",
                ),
                labelStyle: TextStyle(color: Colors.indigo),
                side: BorderSide(color: Colors.indigo),
                backgroundColor: Colors.white,
              ),
            ],
          ),
        ),
        Container(
          // width: context.screenWidth < 900
          //     ? context.screenWidth * 0.9
          //     : ((context.screenWidth * 0.8) / 3),
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            children: const [
              Chip(
                label: Text(
                  "Django",
                ),
                labelStyle: TextStyle(color: Colors.black),
                side: BorderSide(color: Colors.black),
                backgroundColor: Colors.white,
              ),
            ],
          ),
        ),
        Container(
          // width: context.screenWidth < 900
          //     ? context.screenWidth * 0.9
          //     : ((context.screenWidth * 0.8) / 3),
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            children: const [
              Chip(
                label: Text(
                  "Html/Css",
                ),
                labelStyle: TextStyle(color: Colors.black),
                side: BorderSide(color: Colors.black),
                backgroundColor: Colors.white,
              ),
            ],
          ),
        ),
        Container(
          // width: context.screenWidth < 900
          //     ? context.screenWidth * 0.9
          //     : ((context.screenWidth * 0.8) / 3),
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            children: const [
              Chip(
                label: Text(
                  "Git",
                ),
                labelStyle: TextStyle(color: Colors.black),
                side: BorderSide(color: Colors.black),
                backgroundColor: Colors.white,
              ),
            ],
          ),
        ),
        Container(
          // width: context.screenWidth < 900
          //     ? context.screenWidth * 0.9
          //     : ((context.screenWidth * 0.8) / 3),
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            children: const [
              Chip(
                label: Text(
                  "Github",
                ),
                labelStyle: TextStyle(color: Colors.black),
                side: BorderSide(color: Colors.black),
                backgroundColor: Colors.white,
              ),
            ],
          ),
        ),
        Container(
          // width: context.screenWidth < 900
          //     ? context.screenWidth * 0.9
          //     : ((context.screenWidth * 0.8) / 3),
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            children: const [
              Chip(
                label: Text(
                  "Flutter",
                ),
                labelStyle: TextStyle(color: Colors.black),
                side: BorderSide(color: Colors.black),
                backgroundColor: Colors.white,
              ),
            ],
          ),
        ),
        Container(
          // width: context.screenWidth < 900
          //     ? context.screenWidth * 0.9
          //     : ((context.screenWidth * 0.8) / 3),
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            children: const [
              Chip(
                label: Text(
                  "DRF",
                ),
                labelStyle: TextStyle(color: Colors.black),
                side: BorderSide(color: Colors.black),
                backgroundColor: Colors.white,
              ),
            ],
          ),
        ),
        Container(
          // width: context.screenWidth < 900
          //     ? context.screenWidth * 0.9
          //     : ((context.screenWidth * 0.8) / 3),
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            children: const [
              Chip(
                label: Text(
                  "Bootstrap",
                ),
                labelStyle: TextStyle(color: Colors.black),
                side: BorderSide(color: Colors.black),
                backgroundColor: Colors.white,
              ),
            ],
          ),
        ),

        Divider(),
        //
      ],
    );
  }
}
