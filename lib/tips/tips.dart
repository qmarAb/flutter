import 'package:app_meal/pages/account/register.dart';
import 'package:app_meal/pages/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_indicator/page_indicator.dart';

class Tips extends StatefulWidget {
  @override
  _TipsState createState() => _TipsState();
}

class _TipsState extends State<Tips> {
  @override
  Widget build(BuildContext context) {
    var myarr = [
      {
        "title": "Search for food",
        "info": "The best foods you can find in our application",
        "imag": "images/tip0.png"
      },
      {
        "title": "Search for food",
        "info": "The best foods you can find in our application",
        "imag": "images/tip1.png"
      },
      {
        "title": "Search for food",
        "info": "The best foods you can find in our application",
        "imag": "images/tip3.png"
      }
    ];
    double myheight = (MediaQuery.of(context).size.height / 6);
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.only(top: 40 ,left: 30),
              child: GestureDetector(
                child: Text("log in",style: TextStyle(fontSize: 22,color: Colors.pink),),
              ),
            )
            ,
            Container(

              height: myheight * 4,
              child: PageIndicatorContainer(
                  shape: IndicatorShape.circle(),
                  align: IndicatorAlign.bottom,
                  length: 3,
                  indicatorSpace: 10.0,
                  indicatorColor: Colors.grey,
                  indicatorSelectorColor: Colors.pink,
                  child: PageView.builder(
                      physics: AlwaysScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: myarr.length,
                      itemBuilder: (BuildContext context, i) {
                        return SingleTips(
                            title: myarr[i]["title"],
                            info: myarr[i]["info"],
                            imag: myarr[i]["imag"]);
                      }),
                 ),
            ),
            Expanded(
              child: Container(

                padding: EdgeInsets.all(10),
                child: ListView(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        MaterialButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder:(context)=>Register() ));
                        },child:Container(
                           alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15)
                                ,color: Colors.pink
                          ),
                          child: Text("CREAT ACOUNT",style: TextStyle(color: Colors.white,fontSize:20),),
                        ) ,),
                        SizedBox(height: 10,),
                        MaterialButton(onPressed: (){

                        },child:Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15)
                              ,color: Colors.grey[300]
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.facebook
                              )
                              ,

                              Text("USE FACEBOOK",style: TextStyle(color: Colors.black,fontSize:20),),
                            ],
                          ),
                        ) ,)


                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SingleTips extends StatelessWidget {
  final String title;
  final String info;
  final String imag;

  const SingleTips({Key key, this.title, this.info, this.imag});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Container(
          alignment: Alignment.center,
          child: Image.asset(
            imag,
            fit: BoxFit.cover,
          ),
        )),
        Padding(
          padding: EdgeInsets.all(5),
          child: Text(
            title,
            style: TextStyle(
                color: Colors.pink, fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 70),
          child: Text(
            info,
            style: TextStyle(
                color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
