import 'package:flutter/material.dart';
import 'package:untitled2/pages/page_three.dart';
import 'package:untitled2/valibale/pages_as.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);
  @override
  _loginState createState() => _loginState();

}

class _loginState extends State<login> {
  String? email ;
  int pass = 1; // to_use_see_password
  bool show_pass = true; // to_use_see_password
  // name of user


  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      //transform: Matrix4.translationValues(0, myHight.hight_screen!, 0),
      // duration:Duration(milliseconds: 300),
      child: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 280,
                  height: 250,
                  child: Image(
                      image: NetworkImage(
                          'https://thumbs.dreamstime.com/b/welcome-logo-red-curled-ribbon-banner-icon-design-d-vector-illustration-sign-template-98019573.jpg')),
                ),

              ],
            ),
          ), // Logo & Name
          Container(
            margin: EdgeInsets.all(5),
            child: TextField(
              onChanged: (value) {
                email = value;

              },
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter Your Name",
              ),
            ),
          ), // User_NAmed
          Container(
            margin: EdgeInsets.all(20),
            child: Row(

                children: [
               Expanded(
                 flex: 8,
                 child: TextField(
                    scrollPadding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                      obscureText: show_pass,
                      onChanged: (value) {

                      },
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter Your Password",
                      )),
               ),
                  Expanded( flex: 1  ,child: IconButton(onPressed: (){
                    setState(() {
                      pass++;
                      if(pass%2 ==0)
                        {
                          show_pass = false ;
                        }
                      else{
                        show_pass = true;
                      }

                    });
                  }, icon: Icon(Icons.remove_red_eye) , iconSize: 20,)) , //eye_password
            ]
            ),
          ), // Password
          Container(
            margin: EdgeInsets.all(5),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  if(email != null){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => home_are(email:email),
                      ),
                    );
                  }

                });
              },
              child: Text("Login"),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.red)),
            ),
          ), // LOGin
        ],
      ),
    );
  }
}

class User {
  String? user;

  User({
    required this.user
  });

  }

