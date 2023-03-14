import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Animation extends StatefulWidget {
  const Animation({super.key});

  @override
  State<Animation> createState() => _AnimationState();
}

class _AnimationState extends State<Animation> {
  bool ishover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (val) {
        setState(() {
          ishover = val;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        decoration: BoxDecoration(
          color: ishover ? Colors.grey.shade300 : Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(color: ishover ? Colors.grey : Colors.white),
        ),
        padding: const EdgeInsets.all(8.0),
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

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "linkedin",
              ),
              Text(
                "ye linkedin hai ",
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
