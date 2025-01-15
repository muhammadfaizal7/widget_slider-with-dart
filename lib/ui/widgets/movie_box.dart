import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

class MovieBox extends StatelessWidget {
  final String url;
  final double scale;
  const MovieBox(this.url, {this.scale = 1});

  @override
  Widget build(BuildContext context) {
    return Container()
        .width(200 * scale) // Atur lebar
        .height(300 * scale) // Atur tinggi
        .decorated(
          borderRadius: BorderRadius.circular(10), // Sudut membulat
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2), // Efek bayangan
              blurRadius: 5,
              offset: Offset(0, 2),
            ),
          ],
          image: DecorationImage(
            image: NetworkImage(url), // Gambar dari URL
            fit: BoxFit.cover, // Mengatur gambar agar memenuhi kotak
          ),
        )
        .clipRRect(all: 10) // Membulatkan gambar
        .gestures(
      onTap: () {
        print("MovieBox tapped!"); // Aksi ketika ditekan
      },
    ).padding(all: 10); // Margin di sekitar widget
  }
}
