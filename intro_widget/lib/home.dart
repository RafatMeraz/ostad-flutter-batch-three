import 'package:flutter/material.dart';

// regex for email
// TODO - Emil and password validation (password must be 8 letters)


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _titleTEController = TextEditingController();
  final TextEditingController _descriptionTEController = TextEditingController();

  List<Todo> todos = [];

  GlobalKey<FormState> todoForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
              onPressed: () {
                todos.clear();
                if (mounted) {
                  setState(() {});
                }
              },
              icon: const Icon(Icons.playlist_remove),
          )
        ],
      ),
      body: ListView.separated(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          // if (true) {
          //   const Text('Hello');
          // }
          return ListTile(
            onLongPress: () {
              todos[index].isDone = !todos[index].isDone;
              if (mounted) {
                setState(() {});
              }
            },
            leading: Visibility(
              visible: todos[index].isDone,
              replacement: const Icon(Icons.close),
              child: const Icon(Icons.done_outline),
            ),
            title: Text(todos[index].title),
            subtitle: Text(
              todos[index].description,
            ),
            trailing: IconButton(
              icon: const Icon(Icons.delete_forever_outlined),
              onPressed: () {
                todos.removeAt(index);
                if (mounted) {
                  setState(() {});
                }
              },
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(
            height: 0,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showAddNewTodoModalSheet();
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void showAddNewTodoModalSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: todoForm,
              child: Column(
                children: [
                  const Text('Add New Todo'),
                  TextFormField(
                    controller: _titleTEController,
                    decoration: const InputDecoration(hintText: 'Title'),
                    validator: (String? value) {
                      if (value?.trim().isEmpty ?? true) {
                        return 'Please enter your title';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _descriptionTEController,
                    decoration: const InputDecoration(hintText: 'Description'),
                    validator: (String? value) {
                      if (value?.trim().isEmpty ?? true) {
                        return 'Enter your description';
                      }
                      return null;
                    },
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (todoForm.currentState!.validate()) {
                        todos.add(Todo(_titleTEController.text.trim(),
                            _descriptionTEController.text.trim(), false));
                        if (mounted) {
                          setState(() {});
                        }
                        _titleTEController.clear();
                        _descriptionTEController.clear();
                        Navigator.pop(context);
                      }
                    },
                    child: const Text('Add'),
                  )
                ],
              ),
            ),
          );
        });
  }
}

// To do
// title, description, done

class Todo {
  String title, description;
  bool isDone;

  Todo(this.title, this.description, this.isDone);
}
