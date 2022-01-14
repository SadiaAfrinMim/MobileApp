import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController namehere = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        centerTitle: true,
      ),
      backgroundColor: Colors.teal,
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          children: [
            TextField(
              controller: namehere,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.home),
                border: OutlineInputBorder(),
                labelText: 'Name',
                labelStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                ),
                hintText: 'write your name',
                hintStyle: TextStyle(fontSize: 20, color: Colors.pink),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              keyboardType: TextInputType.text,
              obscureText: false,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.message),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                labelText: 'EMAIL',
                labelStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
                hintText: 'your email here',
                hintStyle: TextStyle(
                  fontSize: 17,
                  color: Colors.green,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.remove_red_eye),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                labelText: 'password',
                labelStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
                hintText: 'your password here',
                hintStyle: TextStyle(
                  fontSize: 17,
                  color: Colors.green,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                onPrimary: Colors.white,
              ),
              onPressed: () {
                print('my name' + namehere.text);
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
