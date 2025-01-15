import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

final movieBoxStyle = Styled.widget()
    .width(200) // Lebar
    .height(300) // Tinggi
    .decorated(
  color: Colors.pink, // Warna latar belakang
  borderRadius: BorderRadius.circular(10), // Sudut membulat
  boxShadow: [
    BoxShadow(
      color: Colors.black.withOpacity(0.2),
      blurRadius: 3, // Elevasi
      offset: const Offset(0, 2),
    ),
  ],
).padding(all: 10); // Margin diterapkan sebagai padding pada elemen induk.
