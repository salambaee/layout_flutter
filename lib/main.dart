import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});
  Widget titleSection = Container(
    padding: const EdgeInsets.all(32), // padding sepanjang tepi
    child: Row(
      children: [
        Expanded(
          // soal 1
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // posisi kolom di awal baris
            children: [
              // soal 2
              Container(
                padding: const EdgeInsets.only(bottom: 8), // beri jarak bawah 8
                child: const Text(
                  'Wisata Gunung di Batu',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Text(
                'Banyuwangi, Indonesia',
                style: TextStyle(
                  color: Colors.grey, // warna abu-abu
                ),
              ),
            ],
          ),
        ),
        // soal 3
        const Icon(
          Icons.star,
          color: Colors.red,
        ),
        const Text("41"),
      ],
    ),
  );


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout: Salam Rizqi Mulia dan 362458302041',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: titleSection,
      ),
    );
  }
}