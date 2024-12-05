import 'package:flutter/material.dart';
import 'package:gepeto/gepeto.dart';
import 'todo_router.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageScreenState();
}

class _MessagePageScreenState extends State<MessagePage> {
  final TextEditingController taskController = TextEditingController();
  List<Map<String, dynamic>> tasks = []; // Lista para armazenar tarefas e seus estados (completas ou não)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'To-Do List',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: heading,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.purple),
          onPressed: () {
            ToDoPageRouter.goToLoginPage(context); // Retorna para a página anterior
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpaceMedium,
            Expanded(
              child: ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  final task = tasks[index];
                  return ListTile(
                    leading: Checkbox(
                      value: task['completed'],
                      onChanged: (bool? value) {
                        setState(() {
                          tasks[index]['completed'] = value ?? false;
                        });
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      side: const BorderSide(
                        color: primary, // Cor da borda do checkbox
                      ),
                      // checkColor: Colors.white, // Cor do "check"
                      // activeColor: Colors.white, // Cor do fundo ao marcar
                    ),
                    title: Text(task['title']),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),
                      onPressed: () {
                        setState(() {
                          tasks.removeAt(index);
                        });
                      },
                    ),
                  );
                },
              ),
            ),
            verticalSpaceMedium,
            InputField(
              viewModel: InputViewModel(
                labelText: 'Add a new task',
                icon: Icons.task_alt,
                controller: taskController,
              ),
            ),
            verticalSpaceMedium,
            ActionButton(
              viewModel: ActionButtonViewModel(
                label: 'Add Task',
                onPressed: () {
                  if (taskController.text.isNotEmpty) {
                    setState(() {
                      tasks.add({'title': taskController.text, 'completed': false});
                      taskController.clear();
                    });
                  }
                },
                buttonColor: buttonColor,
                textStyle: buttonTextStyle,
              ),
            ),
            verticalSpaceMedium,
          ],
        ),
      ),
    );
  }
}
