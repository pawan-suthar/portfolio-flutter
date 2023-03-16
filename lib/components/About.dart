import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:io';
import '../utils/social.dart';
import 'package:flutter/services.dart';
// import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;
import 'package:permission_handler/permission_handler.dart';
import 'package:downloads_path_provider/downloads_path_provider.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  // Future<void> _downloadResume() async {
  //   const url =
  //       'https://drive.google.com/file/d/1MeNAs08DNEomd69ugyMzb8l8b58XXGkN/view';

  //   if (await Permission.storage.request().isGranted) {
  //     final response = await http.get(Uri.parse(url));
  //     final bytes = response.bodyBytes;

  //     try {
  //       final downloadsDir = await DownloadsPathProvider.downloadsDirectory;
  //       final file = File('${downloadsDir.path}/resume.pdf');

  //       await file.writeAsBytes(bytes);
  //       ScaffoldMessenger.of(context).showSnackBar(
  //           const SnackBar(content: Text('Resume downloaded successfully')));
  //     } catch (e) {
  //       print(e);
  //       ScaffoldMessenger.of(context).showSnackBar(
  //           const SnackBar(content: Text('Error downloading resume')));
  //     }
  //   } else {
  //     ScaffoldMessenger.of(context)
  //         .showSnackBar(const SnackBar(content: Text('Permission denied')));
  //   }
  // }

  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

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

        Container(
          child: Center(
            child: Container(
              alignment: Alignment.center,
              child: Row(children: [
                GestureDetector(
                  onTap: () {
                    String url =
                        "https://drive.google.com/file/d/1MeNAs08DNEomd69ugyMzb8l8b58XXGkN/view";
                    launchURL(url);
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Card(
                      margin: EdgeInsets.only(left: 90),
                      child: FaIcon(
                        FontAwesomeIcons.download,
                        size: 20.0,
                      ),
                    ),
                  ),
                ),

                //
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Resume",
                      ),
                      // Text(
                      //   "pawan-suthar",
                      // ),
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ),

        Divider(),
        //

        Center(
          child: Container(
            child: Row(children: [
              GestureDetector(
                onTap: () {
                  String url = "https://github.com/pawan-suthar";
                  launchURL(url);
                },
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Card(
                    child: FaIcon(
                      FontAwesomeIcons.gitAlt,
                      size: 20.0,
                    ),
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
              GestureDetector(
                onTap: () {
                  String url = "https://www.linkedin.com/in/pawansuthar1537/";
                  launchURL(url);
                },
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Card(
                    child: FaIcon(
                      FontAwesomeIcons.linkedin,
                      size: 20.0,
                    ),
                  ),
                ),
              ),

              //
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Linkedin",
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
