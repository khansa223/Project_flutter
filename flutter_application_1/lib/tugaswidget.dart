import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class MyTugas extends StatelessWidget {
  const MyTugas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyApp'),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //header row with "berita terbaru" and "pertandingan hariini"
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const[
                Padding(padding: EdgeInsets.all(10),
                child: Text(
                  'BERITA TERBARU',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ),
              Padding(padding:EdgeInsets.all(10),
              child: Text('PERTANDINGAN BOLA HARI INI',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              ),
              
               ),
              ],
            )
  
          ],
        ),
      ),
    );
  }
}