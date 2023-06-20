import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/pages/page_two.dart';
class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 30),
            ),
            Image(image: NetworkImage('https://www.creativefabrica.com/wp-content/uploads/2020/02/12/Camera-Logo-Graphics-1-25-580x386.jpg')),
            Container(
                margin: EdgeInsets.all(20),

                child: Container(
                  padding: EdgeInsets.all(6) ,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.red.shade900,
                      width: 4,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text("Enjoy The Time Here",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.red[700],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => login() ),
            );
          });
        },
        backgroundColor: Colors.red.shade900,
        child: Icon(Icons.arrow_forward_sharp),

      ),
    );
  }
}
