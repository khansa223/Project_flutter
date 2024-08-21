import 'package:flutter/material.dart';
import 'dialog_widget.dart';

class ScaffoldWidget extends StatelessWidget {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Sample Code'),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.person,size: 35,),
          ),
          actions: [
            Text('khansa satya bimodieningrat'),
            IconButton(
              onPressed: (){},
               icon: Icon(Icons.more_vert),
               ),
          ],
         backgroundColor: Colors.yellow, ), backgroundColor: Colors.yellow[200],
          
          
      body: Column(
        children: [
          Center(
            
            child: Text(
              'you have pressed the button $_count times.',
              style: TextStyle(fontSize: 29,
              color: Colors.red,
               ),),
              
          
          ),
          DialogWidget()
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color.fromARGB(255, 255, 0, 0), // Warna ikon dan teks yang dipilih
          unselectedItemColor: const Color.fromARGB(255, 0, 0, 0), // Warna ikon dan teks yang tidak dipilih
        currentIndex: 1,

        items:[BottomNavigationBarItem(
          icon:Icon(
            Icons
          .home,
          ),
          label: 'Home'
        ),
        BottomNavigationBarItem(
          icon:Icon(
            Icons
          .card_giftcard,
          ),
          label: 'Profil'
      ),
      BottomNavigationBarItem(
          icon:Icon(
            Icons
          .verified_user_sharp,
          ),
          label: 'pofil'
      ),
      BottomNavigationBarItem(
          icon:Icon(
            Icons
          .heart_broken,
          ),
          label: 'hati'
      )
      ]
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
}
