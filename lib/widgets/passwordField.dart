/**
 * Adriano Alves
 * Jul 10 2019
 * Widget to handle password input:
 * This widget will change its state when user click on
 * visibility icon button
 * The icon button will be used to show || hide password
 */

import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new PasswordFieldState();

}


class PasswordFieldState extends State<PasswordField>{

  bool hidePassword = true;
  final _userPasswordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // EditText password icon
        IconButton(
            icon: Icon( hidePassword ? Icons.visibility_off : Icons.visibility),
            onPressed: () {
              setState(() {
                hidePassword = !hidePassword;
              });
            }),
        SizedBox(width: 5.0,),
        // EditText password Input
        Expanded(
            child: TextField(
              maxLines: 1,
              obscureText: hidePassword,
              controller: _userPasswordController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "password"
              ),
            ))
      ],
    );
  }
}

// EOF