import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  get labelText => null;


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.settings),
                color: Colors.green),
          ],
          leading: Builder(builder: (BuildContext context) {
            return IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back),
              color: Colors.green,
            );
          }),
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            Row(
              children:[
                Text("Edit Profile",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/OIP.jpeg"),
                  radius: 150,
                  child: Stack(
                    children: [
                      Align(
                          alignment: Alignment.bottomRight,
                          child: RawMaterialButton(
                            onPressed: () {},
                            elevation: 2.0,
                            fillColor: Color(0xFF27A466),
                            child: Icon(Icons.colorize_outlined, color: Colors.white,),
                            padding: EdgeInsets.all(15.0),
                            shape: CircleBorder(),
                          )
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width:200,
                    child: TextField(
                        decoration: InputDecoration(
                          labelText: "Full Name", //babel text
                          hintText: "Enter your Name", //hint text
                          // prefixIcon: Icon(Icons.people), //prefix iocn
                          hintStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), //hint text style
                          labelStyle: TextStyle(fontSize: 20,color: Colors.black), //label style
                        )
                    ),
                  ),
                ]
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Container(
                    width:200,
                    child: TextField(
                        decoration: InputDecoration(
                          labelText: "Email", //babel text
                          hintText: "Enter your Email", //hint text
                          // prefixIcon: Icon(Icons.people), //prefix iocn
                          hintStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), //hint text style
                          labelStyle: TextStyle(fontSize: 20,color: Colors.black), //label style
                        )
                    ),
                  ),
                ]
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Container(
                    width:200,
                    child: TextField(
                        decoration: InputDecoration(
                          labelText: "Password", //babel text
                          // hintText: "", //hint text
                          hintStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), //hint text style
                          labelStyle: TextStyle(fontSize: 20,color: Colors.black), //label style
                          // prefixIcon: Icon(Icons.visibility)
                        )
                    ),

                  ),
                ]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Container(
                  width:200,
                  child: TextField(
                      decoration: InputDecoration(
                        labelText: "Location", //babel text
                        // hintText: "Cairo", //hint text
                        // prefixIcon: Icon(Icons.people), //prefix iocn
                        hintStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), //hint text style
                        labelStyle: TextStyle(fontSize: 20,color: Colors.black), //label style
                      )
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    padding: EdgeInsets.fromLTRB(0, 20, 5, 5),
                    height: 50,
                    child: OutlinedButton(
                      child: Text("Cencel"),
                      onPressed:() {
                      },
                      style: OutlinedButton.styleFrom(
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                      ),
                    )
                ),
                Container(
                    padding: EdgeInsets.fromLTRB(0, 20, 5, 5),
                    height: 50,
                    child: OutlinedButton(
                      child: Text("Save"),
                      onPressed:() {
                      },
                      style: OutlinedButton.styleFrom(
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                      ),
                    )
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

