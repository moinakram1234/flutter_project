import 'dart:html';


import 'package:flutter/material.dart';
import 'package:games_market/sign_in.dart';

class sign_Up extends StatefulWidget {
  const sign_Up({Key? key}) : super(key: key);

  @override
  _sign_UpState createState() => _sign_UpState();
}

class _sign_UpState extends State<sign_Up> {
  TextEditingController nameController = TextEditingController();
  TextEditingController fnameController = TextEditingController();
  TextEditingController lnameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController phonenoController = TextEditingController();

  String _email = " ";
  String _password = " ";
  String _username = "";
  String _phone = "";
  String _fname="";
  String _lname="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: Text('Back'),
        automaticallyImplyLeading: true,
        leading:IconButton(icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                    builder: (context) =>
                    const sign_in()));
          },),

        backgroundColor: Colors.blue,
      ),
      body:

      Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  '',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                style: TextStyle(color: Colors.green),
                controller: usernameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  labelText: 'Enter Username',
                ),
                onChanged: (value) {
                  setState(() {
                    _username = value.trim();
                  });
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                style: TextStyle(color: Colors.green),
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  labelText: 'Enter Email',
                ),
                onChanged: (value) {
                  setState(() {
                    _email = value.trim();
                  });
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  labelText: 'Enter Password',
                ),
                onChanged: (value) {
                  setState(() {
                    _password = value.trim();
                  });
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                style: TextStyle(color: Colors.green),
                controller: phonenoController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  labelText: 'Enter phone number',
                ),
                onChanged: (value) {
                  setState(() {
                    _phone = value.trim();
                  });
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                style: TextStyle(color: Colors.green),
                controller: fnameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  labelText: 'First name',
                ),
                onChanged: (value) {
                  setState(() {
                    _fname = value.trim();
                  });
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                style: TextStyle(color: Colors.green),
                controller: lnameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  labelText: 'Last name',
                ),
                onChanged: (value) {
                  setState(() {
                    _lname = value.trim();
                  });
                },
              ),
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text(
                '    ',
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Register'),
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.green))),
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green)),
                  onPressed: () {
                    // print(nameController.text);
                    // print(passwordController.text);

                  },
                )),
            Row(
              children: <Widget>[
                const Text('Have an account?'),
                TextButton(
                  child: const Text(
                    'Sign In',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ),
      ),
    );
  }
}

