import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NameandEmail extends StatelessWidget {
//  static final GlobalKey<FormFieldState<String>> formkey = GlobalKey<FormFieldState<String>>();
  static final formkey = GlobalKey<FormFieldState<String>>();

  String firstName, lastName, email, password, phoneNumber;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    double myWidth = MediaQuery.of(context).size.width;
    double myHeight = MediaQuery.of(context).size.height;
    /**
     * This is the widget that contains the sign up entry points
     * and the submit button
     */
    return Scaffold(
//        appBar: AppBar(
//          title: Text("Eazi drop"),
//        ),
        body: ListView(
      shrinkWrap: true,
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
//              color: Colors.pink,
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
//            color: Colors.red,
              padding: EdgeInsets.all(myHeight * 0.015),
              alignment: Alignment(0.0, 1.0),
              width: myWidth,
              height: myHeight * 0.70,
              child: Container(
                margin: EdgeInsets.only(top: myHeight * 0.15),
                child: Column(
                  children: <Widget>[
                    /**
                     * The form that is being used to verify and use the data that
                     * is entered in the sign up process
                     */
                    Form(
                      key: formkey,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Container(
//                              color: Colors.pink,
                            child: TextFormField(
//
                              decoration: InputDecoration(
                                  labelText: "First Name",
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20.0)),
                                  )),
//
                              validator: (input) => (input==null)
                                  ? 'Invalid First name'
                                  : null,
                              onSaved: (input) => firstName = input,
                            ),
                            margin: EdgeInsets.only(bottom: myHeight * 0.01),
                          ),
                          Container(
//                              color: Colors.pink,
                            child: TextFormField(
//
                              decoration: InputDecoration(
                                  labelText: "Last Name",
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20.0)),
                                  )),
//
                              validator: (input) => (input == null)
                                  ? 'Invalid Last name'
                                  : null,
                              onSaved: (input) => firstName = input,
                            ),
                            margin: EdgeInsets.only(bottom: myHeight * 0.01),
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
                        onPressed: () {
//                          if (signUp()) {
                          Navigator.of(context).pushNamed("passwordPage");
//                          }
                        },
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
        )
      ],
    ));
  }

  signUp() {
    if (formkey.currentState.validate()) {
      formkey.currentState.save();
      print(firstName);
      print(lastName);
      return true;
    }
  }
}
