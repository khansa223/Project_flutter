import 'package:flutter/cupertino.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image(

      image: AssetImage('assets/802f5852-b0c7-4674-8222-1bad67a08522.jpg'),
      width: 1000, // Atur lebar gambar
      height: 1000, // Atur tinggi gambar
      fit: BoxFit.cover, // Atur bagaimana gambar sesuai dengan kotak
    );
  }
}
