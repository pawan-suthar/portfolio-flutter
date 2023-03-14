import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'components/About.dart';
import 'components/Education.dart';
import 'components/Footer.dart';
import 'components/skills.dart';

class portfolio extends StatefulWidget {
  const portfolio({super.key});

  @override
  State<portfolio> createState() => _portfolioState();
}

class _portfolioState extends State<portfolio> {
  List<Widget> navItems = [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(onPressed: () {}, child: Text("Educations")),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(onPressed: () {}, child: Text("Skills")),
    ),
  ];

  bool isMobile = false;
  @override
  Widget build(BuildContext context) {
    isMobile = MediaQuery.of(context).size.width > 700 ? false : true;

    return Scaffold(
        appBar: AppBar(
          title: const Text("Portfolio App"),
          actions: isMobile ? null : navItems,
        ),
        drawer: isMobile
            ? Drawer(
                child: ListView(
                  children: navItems,
                ),
              )
            : null,
        body: SingleChildScrollView(
          child: Center(
            child: Column(children: [
              Wrap(
                alignment: WrapAlignment.center,
                children: const [
                  About(),
                  Education(),
                ],
              ),
              //
              Skills(),

              Footer(),
            ]),
          ),
        ));
  }
}
