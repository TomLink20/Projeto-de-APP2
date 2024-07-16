import 'package:flutter/material.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 200,
                  child: Image.asset(
                      'assets/hotelfinderlogo.png'), // Replace with your logo
                ),
                const SizedBox(height: 20),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/group8.png', // Replace with your images
                        height: 300,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  'FACILIDADE EM RESERVAR HOTÉIS CONOSCO',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'TENHA A OPORTUNIDADE DE FICAR COM O QUE VOCÊ SONHA A UM PREÇO ACESSÍVEL',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  child: const Text('Próximo'),
                  onPressed: () {
                    Navigator.pushNamed(context, 'home_android');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
