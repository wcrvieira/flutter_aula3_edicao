import 'package:flutter/material.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  String taskname = 'Viajar para a Austrália';
  String taskdate = '03/09/2024';

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
            TextField(    
              onChanged: (value) {
                taskname = value;
              },          
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                icon: Icon(Icons.task),
                hintText: 'Informe a atividade',                                          
              ),
            ),
            TextField(  
              onChanged: (value) {
                taskdate = value;
              },            
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                icon: Icon(Icons.calendar_month),
                hintText: 'Informe a data da atividade',
              ),
            ),
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
        ),
      ),
    );
  }
}
