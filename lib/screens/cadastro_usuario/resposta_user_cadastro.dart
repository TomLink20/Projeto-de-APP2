import 'package:flutter/material.dart';

class RespostaUserCadastro extends StatefulWidget {
  const RespostaUserCadastro({super.key});

  @override
  State<RespostaUserCadastro> createState() => _RespostaUserCadastroState();
}

class _RespostaUserCadastroState extends State<RespostaUserCadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro do Usuário')
      ),
      body: const SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox (height:300) ,
                Text(
                  'CADASTRO REALIZADO COM SUCESSO!',
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




