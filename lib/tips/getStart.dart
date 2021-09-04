import 'package:app_meal/pages/config.dart';
import 'package:app_meal/tips/tips.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GetSrart extends StatefulWidget {
  @override
  _GetSrartState createState() => _GetSrartState();
}

class _GetSrartState extends State<GetSrart> {
  @override
  Widget build(BuildContext context) {
    double myheight = (MediaQuery.of(context).size.height / 3);
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: myheight * 2,
              decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage(
                        "images/tip.png",
                      ),
                      fit: BoxFit.contain)),
            ),
            Container(
              height: myheight,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: primeryColor,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3))
                  ],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: ListView(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "The best food",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                          "The best food you can find in our restaurant, many of the foods we have",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Tips();
                            }));
                          },
                          child: Container(
                              padding: EdgeInsets.only(
                                  left: 40, right: 30, top: 5, bottom: 5),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Text(
                                "Start here",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              )),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
