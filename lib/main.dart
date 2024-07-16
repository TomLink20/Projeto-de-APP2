import 'package:flutter/material.dart';
import 'package:hotelfinder/screens/cadastro/cadastro.dart';
import 'package:hotelfinder/screens/cadastro/resposta_cadastro.dart';
import 'package:hotelfinder/screens/home/home_android.dart';
import 'package:hotelfinder/screens/initial_screen/initial_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const InitialScreen(),
        'home_android': (context) => const HomeAndroid(),
        'cadastro': (context) => const Cadastro(),
        'resposta_cadastro': (context) => const RespostaCadastro(),
      },
    ),
  );
}
