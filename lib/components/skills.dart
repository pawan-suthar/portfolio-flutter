import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 15.0),
          alignment: Alignment.center,
          child: Text(
            "My Skills",
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
          ),
        )
        //

        Container(
          child: Column(
            children: [
              Text("coding",
              ),

              Divider(),
              Chip(label: Text("Python",
              ),
              
              ),
            ],
          ),
        )
      ],
    );
  }
}
