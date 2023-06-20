import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _titleTEController = TextEditingController();
  final TextEditingController _descriptionTEController = TextEditingController();

  List<Todo> todos = [];

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
          return ListTile(
            onLongPress: () {
              todos[index].isDone = !todos[index].isDone;
              if (mounted) {
                setState(() {});
              }
            },
            leading: todos[index].isDone
                ? const Icon(Icons.done_outline)
                : const Icon(Icons.close),
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
            child: Column(
              children: [
                const Text('Add New Todo'),
                TextField(
                  controller: _titleTEController,
                  decoration: const InputDecoration(hintText: 'Title'),
                ),
                TextField(
                  controller: _descriptionTEController,
                  decoration: const InputDecoration(hintText: 'Description'),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_titleTEController.text.trim().isNotEmpty &&
                        _descriptionTEController.text.trim().isNotEmpty) {
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
