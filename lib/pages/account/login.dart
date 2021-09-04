import 'package:app_meal/pages/home/home.dart';
import 'package:flutter/material.dart';
import 'register.dart';
import 'forgetpassword.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                        "Log in to your account",
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
                      child: Row(
                        children: [
                          Expanded(
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
                        GestureDetector(child: Text("forget password", style: TextStyle(color: Colors.pink),),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetPassword(),));
                        },)
                      ],
                      ),
                    ),

                    MaterialButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),));
                        },
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

                  ],
                ),
              )),
              Container(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("If you do not have an account, register here",
                        style: TextStyle(color: Colors.black, fontSize: 16)),
                    Padding(padding: EdgeInsets.all(10)),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Register()));
                      },
                      child: Text(
                        "log in new",
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
