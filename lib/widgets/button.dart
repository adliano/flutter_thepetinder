


import 'package:flutter/material.dart';


class Button extends StatelessWidget{

   final Function onButtonClick;
   final String text;

  const Button({
    @required this.text,
    @required this.onButtonClick,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: RaisedButton(
        child: Text(text,style: TextStyle(color: Colors.white),),
        /// Push Login Screen
        onPressed: onButtonClick,
        padding: EdgeInsets.only(left: 15.0, right: 15.0),
        color: Theme.of(context).buttonColor,
      ),
    );
  }
}


