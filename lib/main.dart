import 'package:flutter/material.dart';
import 'package:hotelfinder/screens/cadastro_hotel/cadastro_hotel.dart';
import 'package:hotelfinder/screens/cadastro_hotel/resposta_cadastro.dart';
import 'package:hotelfinder/screens/cadastro_usuario/cadastro_user.dart';
import 'package:hotelfinder/screens/cadastro_usuario/resposta_user_cadastro.dart';
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
        'cadastro_user': (context) => const Cadastro_User(),
        'resposta_cadastro_user': (context) => const RespostaUserCadastro()
      },
    ),
  );
}
