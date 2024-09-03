import 'package:flutter/material.dart';

class InputSelection extends StatefulWidget {
  const InputSelection({super.key});

  @override
  State<InputSelection> createState() => _InputSelectionState();
}

class _InputSelectionState extends State<InputSelection> {
  TextEditingController nama = TextEditingController();
  TextEditingController password = TextEditingController();
  

   String obscurePassword(String password) {
    return '*' * password.length;
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: nama,
          obscureText: false,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Input Nama",
          ),
          onChanged: (text) {
            setState(() {}); // Memperbarui tampilan ketika teks berubah
          },
        ),

        SizedBox(height: 20),

        TextField(
          controller:  password,
          obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Password", 
          ),
           onChanged: (p) {
            setState(() {}); // Memperbarui tampilan ketika teks berubah
          },
        ),
        
        SizedBox(height: 20), // Menambahkan jarak antara TextField dan Text

        Text(nama.text), // Teks ini akan diperbarui secara dinamis sesuai input
        Text("Password: ${obscurePassword(password.text)}"), // Menampilkan password tersembunyi
        

        SizedBox(height: 10), // Menambahkan jarak antara teks dan "forgot password?"
        
        Text(
          'Forgot password?',
          style: TextStyle(color: Colors.blue), // Menambahkan gaya pada teks
        )
      ],
    );
  }
}
