import 'package:flutter/material.dart';
import 'register.dart';

class ForgetPassword extends StatefulWidget {
  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
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
                      margin: EdgeInsets.only(bottom: 30),
                      child: Text(
                        "Forget password",
                        style: TextStyle(fontSize: 25, color: Colors.pink),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 30),
                      child: Text(
                        "Please enter your email to receive a link to creat a new password via email",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
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


                    MaterialButton(
                        onPressed: () {},
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            alignment: Alignment.center,
                            child: Text(
                              "Send",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                            margin: EdgeInsets.only(bottom: 10, top: 10),
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(25)))),

                  ],
                ),
              )),

            ],
          ),
        ));
  }
}
