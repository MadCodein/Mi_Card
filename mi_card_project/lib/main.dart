import 'package:flutter/material.dart';

//app runs from here
void main(){
  runApp(MyApp());
}

//a statelesswidget class
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.cyan[900],
        //SafeArea ensures that content does not exceed the screens of phones with notch
        body: SafeArea(
          child: Column(
            //mainAxisAlignment is used in columns to align content
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //CircleAvatar creates a circle for profile images etc
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/img.jpg'),
              ),
              Text('Emmanuel Ashitey',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                ),
              ),
              Text('FLUTTER & WEB DEVELOPER',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  color: Colors.teal[100],
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold
                ),
              ),
              //SizedBox helps to create a height or width between widgets
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal[100],
                ),
              ),
             
              //Card basically creates a card
              Card(
                color: Colors.white,
                //create a left and right margin
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                //Padding for the card height(so basically how big the card would be)
                child: Padding(
                  padding: EdgeInsets.all(1.0),
                  
                  //instead of Row we used ListTile 
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title: Text('+233 50 697 4457',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.teal[900],
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Padding(
                  padding: EdgeInsets.all(1.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    title: Text('madcodein@gmail.com',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.teal[900],
                        fontFamily: 'SourceSansPro'                      
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
      //****We could have done this for each card but this is longer****//
            //   Card(
            //     color: Colors.white,
            //     margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            //     child: Padding(
            //       padding: EdgeInsets.all(10.0),
            //       child: Row(
            //         children: <Widget>[
            //           Icon(
            //             Icons.phone
            //           ),
            //           SizedBox(
            //             width: 10.0,
            //           ),
            //           Text('+233 50 697 4457',
            //           style: TextStyle(
            //             color: Colors.teal[900],
            //             fontFamily: 'SourceSansPro',
            //             fontSize: 20.0
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            // ),             