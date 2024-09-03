import 'package:flutter/material.dart';
import 'package:flutter_application_1/date_widget.dart';
import 'package:flutter_application_1/image_widget.dart';

import 'package:flutter_application_1/input_selection.dart';
import 'package:flutter_application_1/row_column.dart';
import 'dialog_widget.dart';
import 'input_selection.dart';

class ScaffoldWidget extends StatelessWidget {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample Code'),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.person, size: 35),
        ),
        actions: [
          Text('khansa satya bimodieningrat'),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
        backgroundColor: Colors.yellow,
      ),
      backgroundColor: Colors.yellow[200],
      body: RowColumn(),
      // body: Scrollbar(
      //   thumbVisibility: true,
      //   child: SingleChildScrollView(
      //     child: Column(
      //       children: [
      //         Center(
      //           child: Text(
      //             'You have pressed the button $_count times.',
      //             style: TextStyle(
      //               fontSize: 29,
      //               color: Colors.red,
      //             ),
      //           ),
      //         ),
      //         DialogWidget(),
      //         InputSelection(),
      //         DateWidget(title: 'tanggal widget'),

      //         ImageWidget(),
      //         SizedBox(height: 20),
      //         ElevatedButton(
      //           onPressed: () {
      //             _showForgotPasswordDialog(context); // Memanggil fungsi untuk menampilkan dialog "Forgot Password"
      //           },
      //           child: Text('Forgot Password?'),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color.fromARGB(255, 255, 0, 0),
        unselectedItemColor: const Color.fromARGB(255, 0, 0, 0),
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Profil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.verified_user_sharp),
            label: 'Profil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.heart_broken),
            label: 'Hati',
          ),
        ],
      ),
      
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 231, 0, 174),
        onPressed: () => 0,
        tooltip: 'Increment Counter',
        child: Icon(Icons.heart_broken),
      ),
      
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
    );
  }

  void _showForgotPasswordDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Forgot Password'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Enter your email to reset your password:'),
              TextField(
                decoration: InputDecoration(hintText: 'Email'),
                keyboardType: TextInputType.emailAddress,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                // Logika untuk mengirim email reset password
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Password reset link sent')),
                );
              },
              child: Text('Submit'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }
}
