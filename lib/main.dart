import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => secondscreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: FlutterLogo(size: MediaQuery.of(context).size.height));
  }
}

class secondscreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<secondscreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sean'),
          centerTitle: true,
          toolbarHeight: 70.2,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(360)),
          elevation: 0.00,
          backgroundColor: Colors.greenAccent[400],
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.menu_book),
              tooltip: 'Menu',
              color: Colors.amberAccent,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => thirdscreen()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.comment),
              tooltip: 'Eatr',
              color: Colors.lightGreen,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => thirdscreen()),
                );
              },
            ),
          ],
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Sean',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Sign in',
                      style: TextStyle(fontSize: 20),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => thirdscreen()),
                    );

                    print(nameController.text);
                    //print(passwordController.text);

//forgot password screen
                  },
                  textColor: Colors.yellow,
                  child: Text('Forgot Password'),
                ),
                Container(
                  height: 50,
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.black87,
                      child: Text('sign in'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => thirdscreen()),
                        );

                        print(nameController.text);
                        //print(passwordController.text);
                      }),
                ),
                Container(
                    child: Row(
                  children: <Widget>[
                    Text('Does not have account?'),
                    FlatButton(
                      textColor: Colors.black45,
                      child: Text(
                        'Sign up',
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
//signup screen{
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => thirdscreen()),
                        );

                        print(nameController.text);
                        //print(passwordController.text);
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ))
              ],
            )));
  }
}

class thirdscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("cards"),
        backgroundColor: Colors.greenAccent[400],
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          elevation: 50,
          shadowColor: Colors.lime,
          child: SizedBox(
            width: 300,
            height: 500,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.cyan,
                    radius: 110,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/1.jpeg'),
                      radius: 100,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Resorts',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Resorts near Aleppy @5555 per day'
                    'food and accomadation included'
                    'checkin @11AM and Checkout @12PM'
                    'Pool Fecility available',
                    style: TextStyle(
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                        color: Colors.amber),
                  ),
                  SizedBox(
                    width: 100,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Colors.blue,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            Icon(Icons.touch_app),
                            Text('Visit'),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
