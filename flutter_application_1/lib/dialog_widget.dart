import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogWidget extends StatelessWidget {
  

  DialogWidget({super.key});
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return MyLayout(
      
    );

   
  }
}
class MyLayout extends StatelessWidget {
   MyLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
          textStyle: TextStyle(fontSize: 24),), // Increase text size
        child: Text ('Show Alert',style: TextStyle(color: Colors.red),),
        onPressed: () {
          showAlertDialog(context);
        },
        ),
    );
  }
}

showAlertDialog(BuildContext context) {

  //set up the button
  Widget okButton = TextButton(
    child: Icon(Icons.thumb_up,color: 
    Colors.red,),
    onPressed: () {Navigator.of(context).pop(); },

  )
  ;

  //set up the alertdialog
  AlertDialog alert = AlertDialog(
    backgroundColor: Colors.black,
    title: Text("tembak", style: TextStyle(color: Colors.pink),), 
    content: Text ("WANNABE MY SHINIGAMI?",style: TextStyle(color: Colors.pink),),
    actions: [
      okButton,
    ],
  );

  //show the dialog
  showDialog(context: context,
   builder: (BuildContext context)
   {return alert;
   },
  );
}