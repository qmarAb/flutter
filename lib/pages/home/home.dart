import 'package:app_meal/pages/drawer/mydrawer.dart';
import 'package:flutter/material.dart';
import 'SingleCategory.dart';
//import 'mydrawer.dart';
import 'SingelProduct.dart';




class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey <ScaffoldState> _keyDrawer=GlobalKey();
  var myarr_category = [
    {"cat_id": "1", "cat_name": "pizza", "cat_image": "images/cat1.png"},
    {"cat_id": "2", "cat_name": "cat2", "cat_image": "images/tip.png"},
    {"cat_id": "3", "cat_name": "cat3", "cat_image": "images/tip.png"},
    {"cat_id": "4", "cat_name": "cat4", "cat_image": "images/tip.png"},
    {"cat_id": "5", "cat_name": "cat5", "cat_image": "images/tip.png"},
    {"cat_id": "6", "cat_name": "cat6", "cat_image": "images/tip.png"},
    {"cat_id": "7", "cat_name": "cat7", "cat_image": "images/tip.png"}
  ];
  var myarr_prodact = [
    {
      "pro_id": "1",
      "pro_name": "pro1",
      "pro_desc": "bhjvg",
      "pro_image": "images/tip.png"
    },
    {
      "pro_id": "2",
      "pro_name": "pro2",
      "pro_desc": "bhjvg",
      "pro_image": "images/tip.png"
    },
    {
      "pro_id": "3",
      "pro_name": "pro3",
      "pro_desc": "bhjvg",
      "pro_image": "images/tip.png"
    },
    {
      "pro_id": "4",
      "pro_name": "pro4",
      "pro_desc": "bhjvg",
      "pro_image": "images/tip.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        key: _keyDrawer,
        endDrawer:MyDrawer(),

        body: Column(
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.only(left: 15),
              child: Text(
                "Delivering to, ",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    "Current Location ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                IconButton(
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.pink,
                    ),
                    onPressed: () {})
              ],
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      _keyDrawer.currentState.openEndDrawer();
                    },

                    child: Icon(
                      Icons.menu,
                      color: Colors.pink,
                      size: 40,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.grey[200]),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Search",
                            border: InputBorder.none,
                            suffixIcon: Icon(Icons.search)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 110,
                  child: ListView.builder(
                    itemCount: myarr_category.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return SingleCategory(
                        cat_id: myarr_category[index]["cat_id"],
                        cat_name: myarr_category[index]["cat_name"],
                        cat_image: myarr_category[index]["cat_image"],
                      );
                    },
                  )),
            ),
            Expanded(
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  child: ListView.builder(
                    itemCount: myarr_prodact.length,
                    itemBuilder: (BuildContext context, int index) {
                      return SingleProduct(
                        pro_id: myarr_prodact[index]["pro_id"],
                        pro_name: myarr_prodact[index]["pro_name"],
                        pro_desc: myarr_prodact[index]["pro_desc"],
                        pro_image: myarr_prodact[index]["pro_image"],
                      );
                    },
                  )),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications,
                  size: 30,
                ),
                title: Text("NOTIFICATION")),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.restaurant_menu,
                  size: 30,
                ),
                title: Text("NOTIFICATION")),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  size: 30,
                ),
                title: Text("MY ACOUNT"))
          ],
          currentIndex: 0,
          selectedItemColor: Colors.pink,
          selectedFontSize: 14,
          unselectedItemColor: Colors.grey,
          unselectedFontSize: 12,
          showSelectedLabels: true,
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}

