import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(accountName: Text("Qmar",style: TextStyle(fontSize: 20,color: Colors.black),), accountEmail: Text("qmara21@gmail.com",style: TextStyle(color: Colors.grey),),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.pink,
                  child: Icon(Icons.person,color: Colors.white,),
                ),
              ),
              decoration: BoxDecoration(color: Colors.grey[100]),),
            Container(
              padding: EdgeInsets.only(right: 10,left: 10),
              child: InkWell(
                onTap: (){},
                child: Column(
                  children: [
                    ListTile(
                      title: Text("HOME BAge",style: TextStyle(color: Colors.black),),
                      leading: Icon(Icons.home,color: Colors.pink,),
                      trailing:Icon(Icons.arrow_forward_ios,color: Colors.black,size: 17,) ,
                    ),
                    Divider(color: Colors.black54,)
                  ],
                ),

              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 10,left: 10),
              child: InkWell(
                onTap: (){},
                child: Column(
                  children: [
                    ListTile(
                      title: Text("MY ACCONT",style: TextStyle(color: Colors.black),),
                      leading: Icon(Icons.person,color: Colors.pink,),
                      trailing:Icon(Icons.arrow_forward_ios,color: Colors.black,size: 17,) ,
                    ),
                    Divider(color: Colors.black54,)
                  ],
                ),

              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 10,left: 10),
              child: InkWell(
                onTap: (){},
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Favorit",style: TextStyle(color: Colors.black),),
                      leading: Icon(Icons.favorite,color: Colors.pink,),
                      trailing:Icon(Icons.arrow_forward_ios,color: Colors.black,size: 17,) ,
                    ),
                    Divider(color: Colors.black54,)
                  ],
                ),

              ),
            )
            ,

          ],
        ),
      ),
    );
  }
}
