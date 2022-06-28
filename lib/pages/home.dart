import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:styled_widget/styled_widget.dart';

class MyHome extends StatefulWidget {
  const MyHome({ Key? key }) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  myDecorCard(icon, tech){
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Align(
        alignment: Alignment.center,
        child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Color(0xffE8F2F7),
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Color(0xff7AC1E7),
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Icon(
                      icon,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
  myAchiev(num, type){
    return Row(
      children: [
        Text(num, 
          style: TextStyle(
              fontSize:30, fontWeight: FontWeight.bold)), 
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(type),
        )
      ],
    );
  }

  mySpec(icon, tech){
    return Container(
                            width: 105,
                            height:115,
                            child: Card(
                              margin: EdgeInsets.all(0),
                              color: Color(0xff252525),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                              child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      icon,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      tech,
                                      style: TextStyle(
                                        color: Colors.white, fontSize: 16),
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
      // backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: PopupMenuButton(
          color: Colors.black,
          icon: Icon(Icons.menu),
          itemBuilder: (context) => [
            PopupMenuItem(
              child: TextButton(
                 child: Text('About Me', style: TextStyle(color: Colors.white)),
                 onPressed: () {
                  Navigator.pushNamed(context, 'about');
                 }
                ),
              ),
              PopupMenuItem(
              child: TextButton(
                 child: Text('Projects', style: TextStyle(color: Colors.white)),
                 onPressed: () {
                  Navigator.pushNamed(context, 'projects');
                 }
                ),
              ),
          ],
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SlidingSheet(
        elevation: 8,
        cornerRadius: 50,
        snapSpec: const SnapSpec(
          // Enable snapping. This is true by default.
          snap: true,
          // Set custom snapping points.
          snappings: [0.4, 0.7, 1.0],
          // Define to what the snappings relate to. In this case, 
          // the total available space that the sheet can expand to.
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        // The body widget will be displayed under the SlidingSheet
        // and a parallax effect can be applied to it.
        body: Container(
          decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.purple, Colors.orange])),
          child: Stack(
            children: [
              Container(
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(top: 35),
                child: ShaderMask(
                  shaderCallback: (rect) {
                    return LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.bottomCenter,
                      colors: [Colors.black, Colors.transparent])
                    .createShader(
                      Rect.fromLTRB(0, 0, rect.width, rect.height)
                    );
                  },
                  blendMode: BlendMode.dstIn,
                  child: Image.asset(
                    'assets/ikhwan.png', 
                    height: 400, 
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.49),
                child: Column(
                  children: [
                    Text(
                      'M Ikhwan Fathulloh', 
                      style: TextStyle(
                        color: Colors.white,
                        fontSize:  40,
                        fontWeight: FontWeight.bold
                    )),
                    SizedBox(
                      height: 1
                    ),
                    Text(
                      'IoT & Backend Developer', 
                      style: TextStyle(
                        color: Colors.white,
                        fontSize:  20,
                    )),
                    SizedBox(
                      height: 2
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        builder: (context, state) {
          // This is the content of the sheet that will get
          // scrolled, if the content is bigger than the available
          // height of the sheet.
          return Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 30),
            height: 500,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    myAchiev('22', ' Projects'),
                    myAchiev('18', ' Certification'),
                    myAchiev('10', ' Awards'),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Perkenalkan saya Muhammad Ikhwan Fathulloh, memiliki minat pada lingkup Internet of Things.', 
                  style: TextStyle(fontSize:20, fontWeight: FontWeight.bold),
                  ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Specialized In', 
                  style: TextStyle(fontSize:20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                  
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // mySpec(Icons.web, 'Website'),
                          // mySpec(Icons.android, 'Android'),
                          // mySpec(Icons.electrical_services_outlined, 'IoT'),
                          myDecorCard(Icons.web, 'Website'),
                          myDecorCard(Icons.android, 'Android'),
                          myDecorCard(Icons.electrical_services_outlined, 'IoT'),
                        ],
                      ),              
                    ]
                  )
              ],
            )
          );
        },
      ),
    );
  }
}