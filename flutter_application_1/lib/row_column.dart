import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  const RowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
child: Container(
  child: Column(
    children: [
      Text("Toko Online"),

      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 157, 157, 157),
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.red),
              
              ),
              child: Column(
                children: [
                Image(image: AssetImage('assets/sijuki.jpeg'),
                width: 300,
                height: 300,
                ),
                Text("Si Juki")
                ],
              ),
            ),
              Container(
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(8),
                child: Column(
                children: [
                Image(image: AssetImage('assets/sijuki.jpeg')),
                Text("Si Juki")
                ],
                            ),
              ),
              Container(
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(8),
                child: Column(
                children: [
                Image(image: AssetImage('assets/sijuki.jpeg')),
                Text("Si Juki")
                ],
                            ),
              ),
              Container(
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(8),
                child: Column(
                children: [
                Image(image: AssetImage('assets/sijuki.jpeg')),
                Text("Si Juki")
                ],
                            ),
              ),
              Container(
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(8),
                child: Column(
                children: [
                Image(image: AssetImage('assets/sijuki.jpeg')),
                Text("Si Juki")
                ],
                            ),
              ),
            
            
          ],
          
          
        ),
      ),
    
     
    ],
  ),
),

    );
  }
}