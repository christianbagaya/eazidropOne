import 'package:flutter/material.dart';
class CreatePassword extends StatelessWidget {
  //used to make sure the user entered the email and username/email
  static final GlobalKey<FormFieldState<String>> formkey = GlobalKey<FormFieldState<String>>();
  String email, password;
  @override
  Widget build(BuildContext context) {
    double myWidth = MediaQuery.of(context).size.width;
    double myHeight = MediaQuery.of(context).size.height;

    // TODO: implement build
    return
      Scaffold(
//        appBar: AppBar(
//          title: Text("Eazi drop"),
//        ),
        body:
      ListView(
      shrinkWrap: true,
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              width: myWidth,
              height: myHeight * 0.3,
//              color: Colors.deepPurple,
              child: Center(
                  child: Text(
                    "eaziDrop",
                    style: TextStyle(fontSize: myWidth * 0.10),
                  )),
            ),
            Container(
              padding: EdgeInsets.all(myHeight * 0.005),
              alignment: Alignment(0.0, 1.0),

              width: myWidth,
              height: myHeight * 0.7,
//          alignment: Alignment(0.0, 0.0),
//              color: Colors.greenAccent,

              child: Container(
                margin: EdgeInsets.only(top: myHeight * 0.15),
                child: Column(
                  children: <Widget>[
                    Form(
                      key: formkey,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Container(
//                              color: Colors.pink,
                            child: TextFormField(
//                  crossAxisAlignment: CrossAxisAlignment.center
                              decoration: InputDecoration(
                                  labelText: "email",
                                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.0)),)),
//                                      borderSide: BorderSide(
//                                          color: Colors.pink[100],
//                                          width: 2.5,
//                                          style: BorderStyle.solid))),
//                              style: TextStyle(color: Colors.white),
                              validator: (input) => !(input.contains("@"))
                                  ? 'Not a valid email'
                                  : null,
                              onSaved: (input) => email = input,
                            ),
                            margin: EdgeInsets.only(bottom: myHeight * 0.01),
                          ),
                          Container(
                            child: TextFormField(
                              decoration:
                              InputDecoration(labelText: "password", border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.0)),)),
//                                      borderSide: BorderSide(
//                                          color: Colors.pink[100],
//                                          width: 2.5,
//                                          style: BorderStyle.solid))),),

                              style: TextStyle(color: Colors.white),
                              validator: (input) => !(input.length > 5)
                                  ? 'The password should be at least 6 charaters'
                                  : null,
                              onSaved: (input) => password = input,
                              obscureText: true,
                            ),
//                              margin: EdgeInsets.only(),
                          ),
                        ],
                      ),
                    ),
//                    ),
                    Container(
//                      color: Colors.black,
//                      decoration: new BoxDecoration(
//                          gradient: new LinearGradient(
//                            colors: [
//                              // Colors are easy thanks to Flutter's Colors class.
//                              Colors.purple[900],
//                              Colors.purple[600],
////          Colors.black,
////          Colors.black,
////          Colors.black,
////          Colors.black,
//                              Colors.purple[400],
//                              Colors.purple[300]
////          Colors.red[200]
//                            ],
//                            begin: FractionalOffset.topLeft,
//                            end: FractionalOffset.bottomLeft,
//                          ),),
//                color: Colors.amberAccent,
                      margin: EdgeInsets.all(myWidth * 0.02),
                      width: myWidth,
                      height: myHeight * 0.1,
                      child: RaisedButton(

                        onPressed: login,
                        child: Text("Sign up"),
                      ),
                    ),
//
                  ],
                ),
              ),
            ),
            //This is a collum containing th
          ],
        )],)


      );}
  void login() {
    if (formkey.currentState.validate()) {
      formkey.currentState.save();
      print(email);
      print(password);
    }
  }
}


