import 'package:flutter/material.dart';

class Cadastro_User extends StatefulWidget {
  const Cadastro_User({super.key});

  @override
  State<Cadastro_User> createState() => _Cadastro_User();
}

class _Cadastro_User extends State<Cadastro_User> {

  final _formKeyUser= GlobalKey<FormState>();
  final _nameUserController = TextEditingController();
  final _emailUserController = TextEditingController();
  final _dateUserController = TextEditingController();
  final _telUserController = TextEditingController();
  final _passUserController = TextEditingController();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKeyUser,
          child: Column(
            children: [
              SizedBox(
                  height: 200,
                  child: Image.asset(
                      'assets/hotelfinderlogo.png'), // Replace with your logo
                ),
              TextFormField(
                autofocus: true,
                controller: _nameUserController,
                decoration: const InputDecoration(
                  labelText: 'Nome Completo',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _emailUserController,
                decoration: const InputDecoration(
                  labelText: 'E-mail',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _dateUserController,
                decoration: const InputDecoration(
                  labelText: 'Data de Nascimento',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _telUserController,
                decoration: const InputDecoration(
                  labelText: 'Telefone',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _passUserController,
                decoration: const InputDecoration(
                  labelText: 'Senha',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                child: const Text('REGISTRAR'),
                onPressed: () {
                  Navigator.pushNamed(context, 'resposta_cadastro_user');
                },
              ),
            ],
          ),
        ),
      )
    );
  }
}