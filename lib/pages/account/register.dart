import 'package:flutter/material.dart';
import 'login.dart';
class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Expanded(
                  child: Form(
                child: ListView(
                  children: [
                    Container(
                      child: Text(
                        "Creat Acount",
                        style: TextStyle(fontSize: 25, color: Colors.pink),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      padding: EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "name",
                        ),
                        validator: (String value) {
                          if (value.isEmpty || value.length < 1) {
                            return "تتتتت";
                          }
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      padding: EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Gmail",
                        ),
                        validator: (String value) {
                          if (value.isEmpty ||
                              value.indexOf(".") == -1 ||
                              value.indexOf("@") == -1) {
                            return "تتتتت";
                          }
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      padding: EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)),
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password",
                        ),
                        validator: (String value) {
                          if (value.isEmpty || value.length < 6) {
                            return "تتتتت";
                          }
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      padding: EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "phon",
                        ),
                        validator: (String value) {
                          if (value.isEmpty || value.length < 5) {
                            return "تتتتت";
                          }
                        },
                      ),
                    ),
                    MaterialButton(
                        onPressed: () {},
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            alignment: Alignment.center,
                            child: Text(
                              "log in",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                            margin: EdgeInsets.only(bottom: 10, top: 10),
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(25)))),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      alignment: Alignment.bottomCenter,
                      child: Text("By clicking on the terms and conditions, you agree to the laws"),
                    )
                  ],
                ),
              )),
              Container(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("If you have another account",
                        style: TextStyle(color: Colors.black, fontSize: 16)),
                    Padding(padding: EdgeInsets.all(10)),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) =>Login(),));
                      },
                      child: Text(
                        "log in",
                        style: TextStyle(color: Colors.pink, fontSize: 16),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
