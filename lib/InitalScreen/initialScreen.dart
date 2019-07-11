/*
* This will be the First Screen to be display
* it will have teo buttons:
* Login Button
* Sing up button
*
* Adriano Alves
* Jul 08 2019
*
* */
import 'package:flutter/material.dart';
import '../login/login.dart';
import '../singup/singup.dart';
import 'package:thepetinder/widgets/button.dart';

//class Login extends StatefulWidget {
//
//  @override
//  State<StatefulWidget> createState() => new LoginState();
//
//
//}

///  LoginState
class InitialScreen  extends StatelessWidget {
  // Build method
  @override
  Widget build(BuildContext context) {
    /// Scaffold
    return Scaffold(
      /// ********* App Bar ********* \\\
      appBar: AppBar(
        /// Leading Icon
        leading: Icon(const IconData(0xe800, fontFamily: 'PetinderIcon'), color: Colors.white),
        /// Title for appbar and style to make it white
        title: Text("Petinder",style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,)),
        actions: <Widget>[
          /// Login action button
//          IconButton(icon: const Icon(Icons.account_circle,color: Colors.white), onPressed: null),
          /// Create account action button
//          IconButton(icon: const Icon(Icons.person_add,color: Colors.white), onPressed: null),
        ],
      ),
      /// ********* Body ********* \\\
      /// Container to add padding and margin
      body: Container(
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(left: 30.0,right: 30.0),
        /// Main ListView to enable scrolling
        child: ListView(
          padding: EdgeInsets.all(15.0),
          children: <Widget>[
            /// Place Image on center
            Center(
              child: Image.asset('assets/images/ki85j78eT.png',),
            ),
            /// Getting
            Container(
              padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: Text("Animals and Universal Consciouness",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,),
              ),
            ),
            Text('Our mission is simple: Make technology an asset for animal lovers.'+
                ' Our clients are people that love animals and are interested in '+
                'contributing to reduce the number of animals in shelters. '+
                'The greatest defense to our pet overpopulation crisis is a well-informed community.'+
                ' Make sure that your friends and family are aware of the pet overpopulation '+
                'crisis and how their personal actions can help solve or contribute to the problem.',
              textAlign: TextAlign.center,
            ),
            Container(
              margin: EdgeInsets.only(top: 15.0, bottom: 10.0),
              child: Text("\"These are ancient, sentient earth residents,"+
                  " with tremendous intelligence and enormous life force."+
                  " Not someone to kill, but someone to learn from.\"" ,
                style: TextStyle(fontWeight: FontWeight.w900),),
            ),
             /// Row with buttons
             new ButtonsRow()

//            Row(
//              mainAxisAlignment: MainAxisAlignment.center,
//              children: <Widget>[
//                /// Login Button
//                Container(
//                  margin: EdgeInsets.only(top: 20.0, right: 20.0),
//                  child: RaisedButton(
//                    child: Text('Login',style: TextStyle(color: Colors.white),),
//                    onPressed: () {}, // TODO implement this button to login screen
//                    padding: EdgeInsets.only(left: 15.0, right: 15.0),
//                    color: Theme.of(context).buttonColor,
//                  ),
//                ),
//                /// Create account button
//                Container(
//                  margin: EdgeInsets.only(top: 20.0, left: 20.0),
//                  child: RaisedButton(
//                    child: Text('Sing up',style: TextStyle(color: Colors.white),),
//                    onPressed: () {}, // TODO implement this button to login screen
//                    padding: EdgeInsets.only(left: 15.0, right: 15.0),
//                    color: Theme.of(context).buttonColor,
//                  ),
//                ),
//              ],
//            )

          ],
        ),
      ),
    );
  }
}


class ButtonsRow extends StatelessWidget{
  // ignore: slash_for_doc_comments
  /**
   * onLoginPressed(context)
   * This will handle the login button event
   **/
  onLoginPressed(context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => new Login() ));
  }
  // ignore: slash_for_doc_comments
  /**
   * onSingUpPressed(context)
   * This will handle the Sing up button event
   **/
  onSingUpPressed(context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => new SingUp() ));
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        /// Login Button
        new Button(onButtonClick: () => onLoginPressed(context), text: 'Login'),
//        Container(
//          margin: EdgeInsets.only(top: 20.0, right: 20.0),
//          child: RaisedButton(
//            child: Text('Login',style: TextStyle(color: Colors.white),),
//            /// Push Login Screen
//            onPressed: () => onLoginPressed(context),
//            padding: EdgeInsets.only(left: 15.0, right: 15.0),
//            color: Theme.of(context).buttonColor,
//          ),
//        ),
        /// Create account button
        new Button(onButtonClick: () => onSingUpPressed(context), text: 'Sing up'),
//        Container(
//          margin: EdgeInsets.only(top: 20.0, left: 20.0),
//          child: RaisedButton(
//            child: Text('Sing up',style: TextStyle(color: Colors.white),),
//            /// Push Sing Up Screen
//            onPressed: () => onSingUpPressed(context),
//            padding: EdgeInsets.only(left: 15.0, right: 15.0),
//            color: Theme.of(context).buttonColor,
//          ),
//        ),
      ],
    );
  }

}

// To use the icon go to http://fluttericon.com/
// Upload your icon
// Download the .zip file
// add the <fontName>.ttf file to fonts/<fontName>.ttf
// Add the .dart file into your lib/ (in this case i used lib/icon/)
// to use the icon now you can do Icon(const IconData(0xe800, fontFamily: 'PetinderIcon')
// the argument to Icon i got from the dart file generated by Flutter icon website