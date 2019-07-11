import 'package:flutter/material.dart';


class EmailTextField extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new EmailTextFieldState();

}


class EmailTextFieldState extends State<EmailTextField>{

  final _userEmailController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // EditText Email account Icon
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: null,
            disabledColor: Colors.black,
          ),
          SizedBox(width: 5.0,),
          Expanded(
              child: TextField(
                maxLines: 1,
                // controller: controller,
                controller: _userEmailController,
                decoration: InputDecoration(
                    labelText: "email",
                    border: OutlineInputBorder()
                ),
              )
          )
        ],
      ); // Email Row end;
  }

}


/// ****************** OLD CODE *******************
//class EmailTextField extends StatelessWidget{
//
////  final TextEditingController controller;
//
//  final _userEmailController = new TextEditingController();
//
//
//  /// Constructor \\\
//  // Need to pass the controller
////  EmailTextField({this.controller});
//
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return ///////////////////////////////////////////////////
//      //// Row holding the Email TextEdit with icon ////
//      ///////////////////////////////////////////////////
//      Row(
//        mainAxisAlignment: MainAxisAlignment.center,
//        children: <Widget>[
//          // EditText Email account Icon
//          IconButton(
//            icon: Icon(Icons.account_circle),
//            onPressed: null,
//            disabledColor: Colors.black,
//          ),
//          SizedBox(width: 5.0,),
//          Expanded(
//              child: TextField(
//                maxLines: 1,
////                controller: controller,
//                controller: _userEmailController,
//                decoration: InputDecoration(
//                    labelText: "email",
//                    border: OutlineInputBorder()
//                ),
//              )
//          )
//        ],
//      ); // Email Row end;
//  }
//
//}