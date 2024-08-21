//import 'package:flutter/material.dart';

//class ButtonWidget extends StatelessWidget {
 // const ButtonWidget({super.key});

  //@override
  //Widget build(BuildContext context) {
    //return Scaffold(
      //body: Center(
        //child: Text(
          //'mau emelan?',
          //style: TextStyle(fontSize: 29, color: Colors.red),
        //),
      //),
      //appBar: AppBar(
        //title: Text(
          //'surat untuk mu!',
          //style: TextStyle(
           //   fontSize: 29, color: const Color.fromARGB(255, 143, 24, 64)),
 //       ),
   //     backgroundColor: Color.fromARGB(255, 255, 230, 0),
    //  ),
     // backgroundColor: Color.fromARGB(255, 255, 255, 255),
 //     floatingActionButton: FloatingActionButton(
   //     onPressed: () {},
     //   child: Icon(Icons.thumb_up),
       // backgroundColor: Colors.pink,
   //   ),floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//    );
  //}
//}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class Ngetes extends StatefulWidget {
  const Ngetes({super.key});

  @override
  State<Ngetes> createState() => _NgetesState();
}

class _NgetesState extends State<Ngetes> {
  bool _isPressed = false;
  double _scaleFactor = 1.0;

  void _increaseScale() {
    setState(() {
      _isPressed = true;
      _scaleFactor += 0.2; // Menambah faktor skala
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ngetes")),
      body: Center(
        child: _isPressed
            ? Transform.scale(
                scale: _scaleFactor,
                child: Image.network(
                  'https://media.tenor.com/9YGa6pkKJ5YAAAAM/muh-cat.gif',
                ),
              )
            : Container(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _increaseScale,
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Ngetes(),
  ));
}