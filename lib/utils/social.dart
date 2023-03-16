// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// class Social extends StatefulWidget {
//   const Social({super.key});

//   @override
//   State<Social> createState() => _SocialState();
// }

// class _SocialState extends State<Social> {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           // padding: const EdgeInsets.all(8.0),
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: const [
//             Center(
//               child: Padding(
//                 // padding: EdgeInsets.all(8.0),
//                 padding: const EdgeInsets.only(left: 20.0, top: 20.0),
//                 child: Center(
//                   child: FaIcon(
//                     FontAwesomeIcons.instagram,
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               // padding: EdgeInsets.all(8.0),
//               padding: const EdgeInsets.only(left: 30.0, top: 20.0),
//               child: Center(
//                 child: FaIcon(
//                   FontAwesomeIcons.google,
//                 ),
//               ),
//             ),
//             Padding(
//               // padding: EdgeInsets.all(8.0),
//               padding:
//                   const EdgeInsets.only(left: 30.0, right: 20.0, top: 20.0),
//               child: Center(
//                 child: FaIcon(
//                   FontAwesomeIcons.squarePhone,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Social extends StatefulWidget {
  const Social({Key? key});

  @override
  State<Social> createState() => _SocialState();
}

class _SocialState extends State<Social> {
  final String instagramUrl = 'https://www.instagram.com/oyee_king_icon/';
  final String googleUrl =
      'https://www.facebook.com/profile.php?id=100044028456154';
  final String phoneNumber = 'tel:7976191769';

  void _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => _launchUrl(instagramUrl),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                child: FaIcon(
                  FontAwesomeIcons.instagram,
                ),
              ),
            ),
            GestureDetector(
              onTap: () => _launchUrl(googleUrl),
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0, top: 20.0),
                child: FaIcon(
                  FontAwesomeIcons.facebook,
                ),
              ),
            ),
            GestureDetector(
              onTap: () => _launchUrl(phoneNumber),
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 30.0, right: 20.0, top: 20.0),
                child: FaIcon(
                  FontAwesomeIcons.squarePhone,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
