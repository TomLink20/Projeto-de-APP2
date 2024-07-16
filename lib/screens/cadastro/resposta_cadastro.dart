import 'package:flutter/material.dart';

class RespostaCadastro extends StatefulWidget {
  const RespostaCadastro({super.key});

  @override
  State<RespostaCadastro> createState() => _RespostaCadastroState();
}

class _RespostaCadastroState extends State<RespostaCadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro do Hotel')
      ),
      body: const SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox (height:300) ,
                Text(
                  'HOTEL CADASTRADO COM SUCESSO!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                  fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}




