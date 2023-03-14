import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../utils/social.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      width: context.screenWidth < 900
          ? context.screenWidth * 0.9
          : context.screenWidth * 0.5,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      padding: EdgeInsets.all(10.0),
      child: Column(children: [
        Image.asset(
          "assets/dev.jpg",
          height: 140.0,
        ),
        const Text(
          "Pawan Suthar",
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Text(
          "Full Stack developer ",
          textAlign: TextAlign.center,
        ),

        Wrap(
          alignment: WrapAlignment.center,
          spacing: 8.0,
          runSpacing: 8.0,
          children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Chip(
                label: Text(
                  "fullstack developer",
                ),
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 14.0,
                ),
                backgroundColor: Colors.transparent,
                padding: EdgeInsets.all(8.0),
              ),
            ),
            // Chip(
            //   label: Text(
            //     "python developer",
            //   ),
            //   labelStyle: TextStyle(
            //     color: Colors.white,
            //     fontSize: 14.0,
            //   ),
            //   backgroundColor: Colors.green,
            //   padding: EdgeInsets.all(8.0),
            // ),
          ],
        ),
        Divider(),
        //

        Center(
          child: Container(
            child: Row(children: [
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Card(
                  child: FaIcon(
                    FontAwesomeIcons.gitAlt,
                    size: 20.0,
                  ),
                ),
              ),
              //
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "github",
                    ),
                    Text(
                      "pawan-suthar",
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
        Center(
          child: Container(
            child: Row(children: [
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Card(
                  child: FaIcon(
                    FontAwesomeIcons.linkedin,
                    size: 20.0,
                  ),
                ),
              ),
              //

              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "linkedin",
                    ),
                    Text(
                      "pawansuthar1537",
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
        //

        //

        // const Social(),

        Divider(),
      ]),
    );
  }
}
