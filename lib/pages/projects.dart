import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:url_launcher/url_launcher.dart';

class MyProjects extends StatefulWidget {
  const MyProjects({ Key? key }) : super(key: key);

  @override
  State<MyProjects> createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {
  myPro(lang, title, desc, star, icon, link){
    final Uri _url = Uri.parse(link);
    void _launchUrl() async {
      if (!await launchUrl(_url)) throw 'Could not launch $_url';
    }

    return Container(
              decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.purple, Colors.orange])),
              height: 220,
              width: MediaQuery.of(context).size.width*0.9,
              child: Card(
                color: Color(0xff262628),
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 10, top: 40,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        lang, 
                        style: TextStyle(
                          color: Colors.white, 
                          fontSize: 18
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        title, 
                        style: TextStyle(
                          color: Colors.white, 
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        desc, 
                        style: TextStyle(
                          color: Colors.white70, 
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star, 
                            color: Colors.white70, 
                            size: 18,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            star, 
                            style: TextStyle(
                              color: Colors.white70)
                          ),
                          Expanded(child: Container()),
                          IconButton(
                          onPressed: _launchUrl,
                          icon: Icon(
                            icon,
                            color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
      backgroundColor: Color(0xff252525),
      title: Text('Projects'),
    ),
    body: SingleChildScrollView(
      child: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            myPro('Flutter', 'Click 2 Code', 'An Online Compiler', '10', FontAwesomeIcons.link, 'https://github.com/Muhammad-Ikhwan-Fathulloh'),
            myPro('Flutter', 'Click 2 Code', 'An Online Compiler', '10', FontAwesomeIcons.github, 'https://github.com/Muhammad-Ikhwan-Fathulloh'),
            myPro('Flutter', 'Click 2 Code', 'An Online Compiler', '10', FontAwesomeIcons.youtube, 'https://github.com/Muhammad-Ikhwan-Fathulloh'),
            myPro('Flutter', 'Click 2 Code', 'An Online Compiler', '10', FontAwesomeIcons.github, 'https://github.com/Muhammad-Ikhwan-Fathulloh'),
            myPro('Flutter', 'Click 2 Code', 'An Online Compiler', '10', FontAwesomeIcons.github, 'https://github.com/Muhammad-Ikhwan-Fathulloh'),
          ],
        ),
      ),
    ),
    );
  }
}