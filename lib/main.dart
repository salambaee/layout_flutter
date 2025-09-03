import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );
    
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Kota Batu di Malang, Jawa Timur, terkenal dengan udara sejuk dan panorama pegunungan yang indah. Wisatawan dapat menikmati pendakian ringan di Gunung Panderman, mencoba olahraga paralayang di Gunung Banyak, hingga menjajal tantangan pendakian Gunung Arjuno-Welirang. Dengan alam yang asri dan pemandangan menawan, wisata gunung di Batu menjadi pilihan tepat untuk relaksasi maupun petualangan alam.',
        softWrap: true,
      )
    );

    return MaterialApp(
      title: 'Flutter layout: Salam Rizqi Mulia dan 362458302041',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/lake.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
  
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color:color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  final Widget titleSection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
          // Soal 1
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Soal 2
              Container(
                padding: const EdgeInsets.only(bottom: 8),
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
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        // Soal 3
        const Icon(
          Icons.star,
          color: Colors.red,
        ),
        const Text("41"),
      ],
    ),
  );
}