import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hajar',
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
  _State createState() => _State();
}

class _State extends State<MyHomePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              height: size.height * 0.3,
              width: double.infinity,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Image.asset(
                      "assets/images/hom.png",
                      width: size.width * 0.3,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // decoration: new BoxDecoration(
              //   shape: BoxShape.rectangle,
              //   border: new Border.all(
              //     width: 1.0,
              //   ),
              // ),
              // alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: Text(
                'LOG IN',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
              ),
              color: Colors.orange,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
              color: Colors.grey,
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
              color: Colors.grey,
            ),
            FlatButton(
              //alignment: crossAxisAlignment: CrossAxisAlignment.end,
              onPressed: () {},
              textColor: Colors.grey,

              child: Text('Forgot Password?'),
            ),
            Container(
              height: 50,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.orange,
                  child: Text('LOG IN'),
                  onPressed: () {}),
            ),
            Container(
                child: Row(
              children: <Widget>[
                Text("Don't have an account?"),
                FlatButton(
                  textColor: Colors.black45,
                  child: Text(
                    'Sign Up Now',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.orange,
                    ),
                  ),
                  onPressed: () {
//signup screen{
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ))
          ],
        ),
      ),
    );
  }
}
