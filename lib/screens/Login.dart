import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hexcolor/hexcolor.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          'بيانات حسابي',
          style: TextStyle(fontSize: 30, color: Colors.brown),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.navigate_next_sharp),
            iconSize: 50,
            color: Colors.brown[900],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Image.asset(
            'assets/back.jpg',
            fit: BoxFit.cover,
          ),
          Center(
            child: Stack(children: [
              CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/OIP.jfif',
                ),
                radius: 80,
              ),
              Positioned(
                  bottom: -5,
                  left: -5,
                  child: IconButton(
                    icon: CircleAvatar(
                      backgroundColor: Colors.brown,
                      child: Icon(
                        Icons.edit_rounded,
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {},
                  ))
            ]),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'aaaa',
                  style: TextStyle(color: Colors.brown[900], fontSize: 20),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                width: 157,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'رقم الجوال',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: Colors.brown[900],
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(6, 0, 6, 0),
            child: Column(
              children: [
                Stack(children: [
                  TextField(
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.brown[400], width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      hintText: '01.........',
                      hintStyle: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 8,
                      left: 6,
                      child: IconButton(
                        icon: CircleAvatar(
                          backgroundColor: HexColor('#f7f7f7'),
                          child: Icon(
                            Icons.edit_rounded,
                            size: 23,
                            color: Colors.grey[700],
                          ),
                        ),
                        onPressed: () {},
                      ))
                ]),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                width: 157,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'اسم المستخدم',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: Colors.brown[900],
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(6, 0, 6, 0),
            child: Column(
              children: [
                Stack(children: [
                  TextField(
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.brown[400], width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      hintText: 'aaaa',
                      hintStyle: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 8,
                      left: 6,
                      child: IconButton(
                        icon: CircleAvatar(
                          backgroundColor: HexColor('#f7f7f7'),
                          child: Icon(
                            Icons.edit_rounded,
                            size: 23,
                            color: Colors.grey[700],
                          ),
                        ),
                        onPressed: () {},
                      ))
                ]),
              ],
            ),
          ),
          SizedBox(
            height: 50,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    Navigator.pushNamed(context, '/forget');
                  });
                },
                child: Text(
                  'تغيير كلمه المرور',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.brown[900],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 70,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(5, 0, 5, 10),
              child: Container(
                width: 400,
                padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.brown),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      side: BorderSide(color: Colors.brown[400], width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    )),
                  ),
                  child: Text(
                    'تأكيد',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          )
        ]),
      ),
      backgroundColor: HexColor('#f7f7f7'),
    );
  }
}
