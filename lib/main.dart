import 'package:flutter/material.dart';
import 'package:skateboard/data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Skateboard',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: PageView.builder(
              itemCount: pageList.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          top: 10.0, left: 30.0, right: 50.0, bottom: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "#${index + 1}",
                            style: TextStyle(
                                fontFamily: "Aauxtnext",
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0),
                          ),
                          Text(
                            "Skateboard",
                            style: TextStyle(
                                fontSize: 12.0,
                                fontFamily: "Aauxtnext",
                                color: Colors.grey.shade500),
                          ),
                        ],
                      ),
                    ),
                    Container(height: 1.0, color: Colors.grey.shade300),
                    Container(
                      height: 100.0,
                      child: Center(
                        child: Text(
                          pageList[index].title,
                          style: TextStyle(fontSize: 54.0, fontFamily: "gza"),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        RotatedBox(
                          quarterTurns: -45,
                          child: Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Text(
                              "Type of something",
                              style: TextStyle(
                                  fontFamily: "Aauxtnext",
                                  color: Colors.grey.shade500),
                            ),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * .55,
                          width: MediaQuery.of(context).size.width * .65,
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                top: 20.0,
                                right: 0,
                                left: 0,
                                child: Align(
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.height * .5,
                                    width:
                                        MediaQuery.of(context).size.width * .6,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.0),
                                      gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          pageList[index].colorone,
                                          pageList[index].colortwo,
                                        ],
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.shade300,
                                            blurRadius: 15.0,
                                            offset: Offset(5.0, 5.0))
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 0,
                                right: 0,
                                left: 0,
                                child: Align(
                                  child: Container(
                                    decoration: BoxDecoration(boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(.5),
                                          blurRadius: 50.0,
                                          offset: Offset(5.0, 5.0))
                                    ]),
                                    height: MediaQuery.of(context).size.height *
                                        .55,
                                    width:
                                        MediaQuery.of(context).size.width * .25,
                                    child: Image.asset(pageList[index].imageUrl,
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0.0,
                                right: 0.0,
                                child: Container(
                                  height: 60.0,
                                  width: 60.0,
                                  decoration: BoxDecoration(
                                      color: Color(0xFF212020),
                                      borderRadius:
                                          BorderRadius.circular(50.0)),
                                  child: Center(
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.add,
                                        size: 25.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        RotatedBox(
                          quarterTurns: -45,
                          child: Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Text(
                              "Type of something",
                              style: TextStyle(
                                  fontFamily: "Aauxtnext",
                                  color: Colors.grey.shade500),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text('9.5" x 32"',
                            style: TextStyle(
                                fontFamily: "Aauxtnext",
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0)),
                        Text('690 €',
                            style: TextStyle(
                                fontFamily: "Aauxtnext",
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0))
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      pageList[index].lorem,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "Aauxtnext",
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade500.withOpacity(.8),
                          height: 1.3),
                    )
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
