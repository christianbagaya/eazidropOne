import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignupWidget extends StatelessWidget {
  final formkey = GlobalKey<FormState>();
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
    return ListView(
      shrinkWrap: true,
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
//              color: Colors.pink,
              width: myWidth,
              height: myHeight * 0.15,
//              color: Colors.deepPurple,
              child: Center(
                  child: Text(
                "Sign up",
                    style: TextStyle(fontSize: myWidth * 0.10),
              )),
            ),
            Container(
//            color: Colors.red,
              padding: EdgeInsets.all(myHeight * 0.015),
              alignment: Alignment(0.0, 1.0),
              width: myWidth,
              height: myHeight * 0.85,
              child: Container(
//                margin: EdgeInsets.only(top: myHeight * 0.15),
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
                              validator: (input) => !(input.length < 1)
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
                              validator: (input) => !(input.length < 1)
                                  ? 'Invalid Last name'
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
                                  labelText: "Email",
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20.0)),
                                  )),
//
                              validator: (input) => !(input.contains("@"))
                                  ? 'Invalid email'
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
                                  labelText: "Phone number",
                                  border: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),

                                  )),
//
                              validator: (input) => !(input.length > 10)
                                  ? 'Invalid Phone number'
                                  : null,
                              inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                              onSaved: (input) => firstName = input,
                            ),
                            margin: EdgeInsets.only(bottom: myHeight * 0.01),
                          ),
                          Container(
                            child: TextFormField(
                              decoration: InputDecoration(
                                  labelText: "password",
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20.0)),
                                  )),
                              style: TextStyle(color: Colors.white),
                              validator: (input) => !(input.length > 5)

                                  ? 'The password should be at least 6 charaters'
                                  : null,
                              onSaved: (input) => password = input,
                              obscureText: true,
                            ),

                            margin: EdgeInsets.only(bottom: myHeight * 0.01),
                          ),
                          Container(
                            child: TextFormField(
                              decoration: InputDecoration(
                                  labelText: "Confirm password",
                                  border: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                                  )),
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
                        onPressed: Signup,
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
    );
  }

  void Signup() {
    if (formkey.currentState.validate()) {
      formkey.currentState.save();
      print(firstName);
      print(lastName);
    }
  }
}
