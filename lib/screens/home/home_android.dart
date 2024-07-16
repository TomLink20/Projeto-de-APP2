import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomeAndroid extends StatefulWidget {
  const HomeAndroid({super.key});

  @override
  State<HomeAndroid> createState() => _HomeAndroidState();
}

class _HomeAndroidState extends State<HomeAndroid> {
  final List<Map<String, dynamic>> hotels = [
    {
      'name': 'Grand Hotel',
      'location': 'Gramado, Rio Grande do Sul',
      'price': 500.00,
      'rating': 4.5,
      'reviews': 60,
      'image': 'assets/grandhotel.png'
    },
    {
      'name': 'Palace Hotel',
      'location': 'Gramado, Rio Grande do Sul',
      'price': 450.00,
      'rating': 5.0,
      'reviews': 78,
      'image': 'assets/palacehotel.png'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HotelFinder'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              onMenuSelected(context, value);
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                child: const Text('Cadastro'),
                onTap: () {
                  Navigator.pushNamed(context, 'cadastro');
                },
              ),
              PopupMenuItem(
                child: const Text('Preço'),
                onTap: () {},
              ),
              PopupMenuItem(
                child: const Text('Localização'),
                onTap: () {},
              ),
              PopupMenuItem(
                child: const Text('Categoria'),
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: hotels.length,
        itemBuilder: (context, index) {
          final hotel = hotels[index];
          return Card(
            margin: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(hotel['image']),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    hotel['name'],
                    style: const TextStyle(
                        fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    hotel['location'],
                    style: const TextStyle(fontSize: 16.0, color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RatingBar.builder(
                      initialRating: hotel['rating'],
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding:
                          const EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                       setState(() {
                        hotel['rating'] = rating;
                       });
                         },
                       ),
                      
                      Text('${hotel['reviews']} comentários'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'R\$ ${hotel['price'].toStringAsFixed(2)}/noite',
                    style: const TextStyle(
                        fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

void onMenuSelected(BuildContext context, String choice) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text('Selecionado: $choice')),
  );
}
