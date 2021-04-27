import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';

class Forget extends StatefulWidget {
  @override
  _ForgetState createState() => _ForgetState();
}

class _ForgetState extends State<Forget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          'تغير كلمه المرور',
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
          SizedBox(
            height: 90,
            child: Container(
              padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: TextField(
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  fillColor: HexColor('E9DAC4'),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.brown[400], width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  hintText: 'كلمة المرور القديمة',
                  hintStyle: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 90,
            child: Container(
              padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: TextField(
                textAlign: TextAlign.right,
                obscureText: true,
                decoration: InputDecoration(
                  fillColor: HexColor('E9DAC4'),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.brown[400], width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  hintText: 'كلمة المرور الجديدة',
                  hintStyle: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 90,
            child: Container(
              padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: TextField(
                textAlign: TextAlign.right,
                obscureText: true,
                decoration: InputDecoration(
                  fillColor: HexColor('E9DAC4'),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.brown[400], width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  hintText: 'تأكيد كلمة المرور الجديدة',
                  hintStyle: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),

        ]),
      ),
      backgroundColor: HexColor('#f7f7f7'),
      bottomNavigationBar: InkWell(
        onTap: (){},
        child: Container(
          height: 60,
         child: Center(
           child: Text(
               'تأكيد',
             style: TextStyle(
               fontSize: 25,
                   color: Colors.white,
             ),
           ),
         ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                end: Alignment.bottomCenter,
                begin: Alignment.topCenter,
              colors: [Colors.brown[200],Colors.brown[600], Colors.brown[900]]
            ),
            borderRadius: BorderRadius.only(topRight: Radius.circular(40),
            topLeft:Radius.circular(40) ),
            border: Border.all(
                color: Colors.brown, width: 1.0
            )
          ),
        ),
      ),
    );
  }
}
