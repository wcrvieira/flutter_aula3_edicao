import 'package:flutter/material.dart';

class EditaAtividades extends StatefulWidget {
  const EditaAtividades({super.key});

  @override
  State<EditaAtividades> createState() => _EditaAtividadesState();
}

class _EditaAtividadesState extends State<EditaAtividades> {

  String nomeAtividade = '';
  String dataAtividade = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Center(
            child: Text('Edição de atividades'),
          ),
        ),
        body: Column(
          children: [
            const SizedBox(height: 20),
            const Icon(
              Icons.check_box_outline_blank,
              color: Colors.blue,
            ),
            const SizedBox(width: 20),
            const Text(
              'Estudar para prova de matemática.',
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 26,
                color: Colors.blue,
              ),
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                '16/08/2024',
                style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: 22,
                ),
              ),
            ),
            const Row(
              children: [
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Nome da atividade',
                  ),
                )
              ],
            ),
            const Row(
              children: [
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Data da atividade',
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                FilledButton(
                  onPressed: () {
                    setState(() {
                      
                    });
                  },
                  child: const Text('Salvar'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
