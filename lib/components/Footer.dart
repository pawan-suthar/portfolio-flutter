import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:portfolio/utils/social.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        padding: EdgeInsets.all(5.0),
        margin: EdgeInsets.only(top: 1.0),
        child: Column(
          children: const [
            Social(),
            SizedBox(
              height: 10.0,
            ),
            Text("designed by pawan suthar"),
          ],
        ));
  }
}
